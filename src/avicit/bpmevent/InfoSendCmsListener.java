package avicit.bpmevent;

import avicit.platform6.api.sysprofile.SysProfileAPI;
import avicit.platform6.bpm.api.BpmVariableKey;
import avicit.platform6.bpm.api.listener.EventListener;
import avicit.platform6.bpm.api.listener.EventListenerExecution;
import avicit.platform6.bpm.pvm.internal.model.ExecutionImpl;
import avicit.platform6.commons.utils.web.WsUtil;
import avicit.platform6.core.spring.CacheSpringFactory;
import avicit.platform6.core.spring.SpringFactory;
import avicit.platform6.eform.EformConstant;
import avicit.platform6.eformbpms.dto.TableColData;
import avicit.platform6.eformbpms.dto.TableData;
import avicit.platform6.eformbpms.utils.BpmsControlUtils;
import avicit.platform6.modules.system.sysfileupload.domain.SysFileUpload;
import avicit.platform6.modules.system.sysfileupload.service.SwfUploadService;
import org.apache.commons.lang3.StringEscapeUtils;
import org.apache.cxf.endpoint.Client;
import org.apache.cxf.jaxws.endpoint.dynamic.JaxWsDynamicClientFactory;
import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;

import javax.xml.namespace.QName;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
  * 
  * InfoSendCmsListener
  * 说明：OA推送cms数据接口
  * 时间： 2019-07-04 18:54
  * 
  * */
public class InfoSendCmsListener implements EventListener {
	private static final long serialVersionUID = 1L;

	@Override
	public void notify(EventListenerExecution execution) throws Exception {
		
		SysProfileAPI sysProfileAPI = CacheSpringFactory.getInstance().getBean(SysProfileAPI.class);
		//接口表单信息
		String title = "";
		String fileNum = "";    //表单编号
		String whetherPlace=""; //是否发所网
		String secret="";       //OA密级
		String secretLevel = ""; //发送密级
		String createTimeEnd="";
		String formId = (String) execution.getVariable("id"); // 获取form的id
		//配置信息
		ExecutionImpl executionImpl = (ExecutionImpl) execution;
		ResourceBundle resource = ResourceBundle.getBundle("platform6");
		/*String attachHost = resource.getString("platform.cms.attach");
		String cmstTable = resource.getString("platform.cms.table");*/
		String attachHost = sysProfileAPI.getProfileValueByCodeByAppId("PLATFORM_ATTACH","1");
		String cmstTable = sysProfileAPI.getProfileValueByCodeByAppId("PLATFORM_TABLE","1");
		BpmsControlUtils bpmsControlUtils = SpringFactory.getBean("bpmsControlUtils");
		SwfUploadService swfUploadService = SpringFactory.getBean(SwfUploadService.class);
		
		// 表信息
		TableData tableData = new TableData();
		tableData.setTableName(cmstTable);
		List<TableColData> tableColDataList = new ArrayList<TableColData>();
		TableColData subColFK = new TableColData();
		subColFK.setColName("ID");//字段信息
		subColFK.setColJdbcType(EformConstant.ColJdbcTypeEnum.VARCHAR);
		subColFK.setColSelectType(EformConstant.ColSelectTypeEnum.EQUAL);
		subColFK.setColValue(executionImpl.getVariable(BpmVariableKey.ID));
		tableColDataList.add(subColFK);
		tableData.setTableColDataList(tableColDataList);
		List<Map<String, Object>> data = bpmsControlUtils.getDataList(tableData);

		if (data == null || data.size() == 0) {  //判断信息是否有值
			return;
		}

		//同步字段信息处理
		for (Map<String, Object> map : data) {
			title = (String) map.get("TITLE");    //标题
			fileNum = (String) map.get("WA_FORM_CODE");   //自动编码
			System.out.println("------------fileNum:=" + fileNum);
			secret = (String) map.get("MJ");    		//密级
			Long createTime = (Long)map.get("CREATION_DATE"); //创建时间
			createTimeEnd = Long.toString(createTime);  
			createTimeEnd = timeStamp2Date(createTimeEnd);
			secretLevel = secretLevelUtil(secret);
			whetherPlace = (String) map.get("WHETHERPLACE"); //送所网
		}

		//1非密 2内部 whetherPlace是否发送至所网 1是 0否
		if(secret.equals("1") || secret.equals("2") && whetherPlace.equals("1")){  	//条件符合是否发送所网
		// 获取附件
		String AttachPath = ""; // 本地文件路径
		List<SysFileUpload> list = swfUploadService.getFileListByFormId(formId);
		if (list != null && list.size() > 0) {
			for (int i = 0; i < list.size(); i++) {
				SysFileUpload sysFileUpload = list.get(list.size()-1);
				AttachPath = sysFileUpload.getFILE_URL();
			}
		}

		
		// 调用webService服务
		String uuid = UUID.randomUUID().toString();
		String wsdlURL = attachHost + "/ws/contentInfoService?wsdl";
		String path = uploadFile(AttachPath, uuid);    //调用附件接口

		JaxWsDynamicClientFactory clientFactory = JaxWsDynamicClientFactory.newInstance();
		Client client = clientFactory.createClient(wsdlURL);

		Document document = DocumentHelper.createDocument();
		document.setXMLEncoding("UTF-8");
		Element rootElement = document.addElement("data");
		// 站点：1 主站
		rootElement.addElement("site").addText("128"); // *
		// rootElement.addElement("site").addText("1");
		// 栏目：297标识发文中心，317表示制度在线：制度在线下包括（345制度文件，346惩防体系，347废止制度）
		// rootElement.addElement("channelId").addText("345");
		rootElement.addElement("channelId").addText("637"); // *
		// 1 新闻;2 单页;4 下载;5 图库;6 视频;8 招聘;9 文库;10 工作流;11 产品
		rootElement.addElement("modelId").addText("9"); // *
		// 用户标识符
		rootElement.addElement("userName").addText("system"); // * 用户名
		// 1表示本地，2表示数据库
		rootElement.addElement("store").addText("1"); // *
		// 标题
		rootElement.addElement("title").addText(title); // *
		// 文号-字段
		rootElement.addElement("fileName").addText("sendNo");
		// 文号-值
		System.out.println("------------fileNum:=" + fileNum);
		rootElement.addElement("fileNum").addText(fileNum);
		// 内容-密级
		rootElement.addElement("secretLevel").addText(secretLevel); // *
		// 拟稿时间
		rootElement.addElement("createTime").addText(createTimeEnd); // *
		// 拟稿部门-code
		rootElement.addElement("createDept").addText("");
		// 拟稿人-code
		rootElement.addElement("createPerson").addText("");

		// 发送范围 //*
		Element sendRange = rootElement.addElement("sendRange");
		// 部门范围
		sendRange.addElement("deptRange").addText("22600200");
		// 人员范围
		sendRange.addElement("userRange").addText("");

		// 上一版本制度文号-字段
		rootElement.addElement("prevVerFileName").addText("xiaoliu");
		// 上一版本制度文号-值
		rootElement.addElement("prevVerFileNum").addText("1");
		// 上一版本制度移到废止制度栏目下
		rootElement.addElement("prevVerFileChannelId").addText("347");

		// 正文（PDF及WORD格式）
		rootElement.addElement("docBody").addText("");
		// 所属栏目: 网安制度/三十所制度
		rootElement.addElement("unit").addText("");

		// 附件
		Element attachments = rootElement.addElement("attachmentDics");
		Element attachment = attachments.addElement("attachmentDic");
		// 附件路径
		attachment.addElement("path").addText(path);
		// 附件密级
		attachment.addElement("attaSecret").addText(secretLevel);
		rootElement.addElement("uuid").addText(uuid);
		
		String xml = document.asXML();

		QName opName = WsUtil.getOperationName(client.getEndpoint(), "save");
		Object[] result = client.invoke(opName, StringEscapeUtils.escapeHtml4(xml));
		System.out.println(result[0]);
		
	}
	}

	/**
	 * 客户端上传文件 @param filepath @throws Exception void @throws
	 */
	public static String uploadFile(String filepath, String uuid) throws Exception {
		ResourceBundle resource = ResourceBundle.getBundle("platform6");
		String attachHost = resource.getString("platform.cms.attach");
		String serverpath = ""; // 文件存服务器的路径
		FileInputStream fs = null;
		// 上次此次条目所对应的附件
		try {
			String wsdlURL = attachHost + "/ws/contentInfoService?wsdl";
			File file = new File(filepath);
			String dirFileName = uuid;

			String fileName = file.getName();
			fs = new FileInputStream(file);
			long size = 2097152;// 每次上传值2MB
			long fileSize = (int) file.length();// 文件大小
			long offset = 0;// 文件传输起始位置
			long setSize = 0;// 本次上传大小
			while (fileSize > 0) {
				// 计算本次上传文件大小
				if (fileSize - size > 0) {
					setSize = size;
				} else {
					setSize = fileSize;
				}
				byte[] buf = new byte[(int) setSize];
				fs.read(buf, 0, (int) setSize);
				// 调用webService服务
				JaxWsDynamicClientFactory clientFactory = JaxWsDynamicClientFactory.newInstance();
				Client client = clientFactory.createClient(wsdlURL);
				QName opName = WsUtil.getOperationName(client.getEndpoint(), "uploadAttachment");
				Object[] result = client.invoke(opName, "", fileName, buf, offset, dirFileName);
				serverpath = result[0].toString();
				// 计算文件下次上传起始位置
				fileSize = fileSize - size;
				if (fileSize - size > 0) {
					offset = offset + size;
				} else {
					offset = offset + fileSize;
				}
			}
			return serverpath;
		} catch (FileNotFoundException e) {
			System.out.println("读取文件失败   Exception:" + e.getMessage());
			return serverpath;
		} finally {
			if (null != fs) {
				fs.close();
			}
		}
	}

	/**
	 * 密级转换
	 * @param secretLevel
	 * @return
	 */
	public static String secretLevelUtil(String secretLevel) {
		String secretString = "";
		if (secretLevel.equals("1") || "[]" == secretLevel || "[]".equals(secretLevel) || null == secretLevel
				|| "".equals(secretLevel) || "null".equals(secretLevel)) {
			secretString = "非密";
		} else if (secretLevel.equals("2")) {
			secretString = "内部";
		} else if (secretLevel.equals("3")) {
			secretString = "秘密";
		} else if (secretLevel.equals("4")) {
			secretString = "机密";
		} else {
			secretString = "非密";
		}
		return secretString;
	}
	
	/**
	 * 时间格式化
	 * @param time
	 * @return
	 */
	public static String timeStamp2Date(String time) {
	    Long timeLong = Long.parseLong(time);
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//要转换的时间格式
	    Date date;
	    try {
	        date = sdf.parse(sdf.format(timeLong));
	        return sdf.format(date);
	    } catch (ParseException e) {
	        e.printStackTrace();
	        return null;
	    }
	}

}