package com.jeecms.cms.action.admin.main;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.UUID;

import javax.xml.namespace.QName;

import org.apache.commons.lang3.StringEscapeUtils;
import org.apache.cxf.endpoint.Client;
import org.apache.cxf.jaxws.endpoint.dynamic.JaxWsDynamicClientFactory;
import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;

import avicit.platform6.commons.utils.web.WsUtil;

public class ContentInfoTest{
	
	public static void main(String[] args) throws Exception {
		// 调用webService服务
		String wsdlURL = "http://localhost:8080/wacms/ws/contentInfoService?wsdl";
		wsdlURL = "http://192.168.1.127:80/cmsv/ws/contentInfoService?wsdl";
		wsdlURL = "http://192.168.1.127/ws/contentInfoService?wsdl";
		String uuid = UUID.randomUUID().toString();
		//String path = uploadFile("D:\\onlinedoc\\docFile\\西飞汇报大纲.pdf",uuid);
//		String path = uploadFile("D:\\onlinedoc\\docFile\\报销单填报例子.pdf",uuid);
		String path = uploadFile("D:\\onlinedoc\\docFile\\考勤管理制度.pdf",uuid);
		System.out.println(path);
		
		JaxWsDynamicClientFactory clientFactory = JaxWsDynamicClientFactory.newInstance();
		Client client = clientFactory.createClient(wsdlURL);
		
		Document document = DocumentHelper.createDocument();
		document.setXMLEncoding("UTF-8");
		Element rootElement = document.addElement("data");
		//站点：1 主站
		rootElement.addElement("site").addText("128");
//		rootElement.addElement("site").addText("1");
		//栏目：297标识发文中心，317表示制度在线：制度在线下包括（345制度文件，346惩防体系，347废止制度）
		//rootElement.addElement("channelId").addText("345");
		rootElement.addElement("channelId").addText("637");
		//1 新闻;2 单页;4 下载;5 图库;6 视频;8 招聘;9 文库;10 工作流;11 产品
		rootElement.addElement("modelId").addText("9");
		//用户标识符
		rootElement.addElement("userName").addText("system");
		//1表示本地，2表示数据库
		rootElement.addElement("store").addText("1");
		//标题
		rootElement.addElement("title").addText("报销单填报例子测试看看0617002");
		//文号-字段
		rootElement.addElement("fileName").addText("xiaoliu");
		//文号-值
		rootElement.addElement("fileNum").addText("1");
		//内容-密级
		rootElement.addElement("secretLevel").addText("非密");
		//拟稿时间
		rootElement.addElement("createTime").addText("2019-06-17 14:01:05");
		//拟稿部门-code
		rootElement.addElement("createDept").addText("");
		//拟稿人-code
		rootElement.addElement("createPerson").addText("");
		
		//发送范围
		Element sendRange = rootElement.addElement("sendRange");
		//部门范围
		sendRange.addElement("deptRange").addText("信息资讯中心");
		//人员范围
		sendRange.addElement("userRange").addText("");
		
		//上一版本制度文号-字段
		rootElement.addElement("prevVerFileName").addText("xiaoliu");
		//上一版本制度文号-值
		rootElement.addElement("prevVerFileNum").addText("1");
		//上一版本制度移到废止制度栏目下
		rootElement.addElement("prevVerFileChannelId").addText("347");
		
		//正文（PDF及WORD格式）
		rootElement.addElement("docBody").addText("");
		//所属栏目: 网安制度/三十所制度
		rootElement.addElement("unit").addText("");
		
		//附件
		Element attachments = rootElement.addElement("attachmentDics");
		Element attachment = attachments.addElement("attachmentDic");
		//附件路径
		attachment.addElement("path").addText(path);
		//附件密级
		attachment.addElement("attaSecret").addText("非密");
		
		rootElement.addElement("uuid").addText(uuid);
		
		
		String xml = document.asXML();
		
		QName opName = WsUtil.getOperationName(client.getEndpoint(), "save");
		Object[] result = client.invoke(opName, StringEscapeUtils.escapeHtml4(xml));
		System.out.println(result[0]);
	}
	
	/**
	 * 客户端上传文件
	 * @param filepath
	 * @throws Exception void
	 * @throws
	 */
	public static String uploadFile(String filepath,String uuid) throws Exception {
		String serverpath=""; //文件存服务器的路径
		FileInputStream fs = null;
		// 上次此次条目所对应的附件
		try {
			String wsdlURL = "http://localhost:8080/wacms/ws/contentInfoService?wsdl";
			wsdlURL = "http://192.168.1.127:80/cmsv/ws/contentInfoService?wsdl";
			wsdlURL = "http://192.168.1.127/ws/contentInfoService?wsdl";
			File file = new File(filepath);			
			String dirFileName = uuid;
			
			String fileName = file.getName();
			fs = new FileInputStream(file);
			long size = 2097152;// 每次上传值2MB
			long fileSize = (int)file.length();// 文件大小
			long offset = 0;// 文件传输起始位置
			long setSize = 0;// 本次上传大小
			while (fileSize > 0) {
				// 计算本次上传文件大小
				if (fileSize - size > 0) {
					setSize = size;
				} else {
					setSize = fileSize;
				}
				byte[] buf = new byte[(int)setSize];
				fs.read(buf, 0, (int)setSize);
				// 调用webService服务
				JaxWsDynamicClientFactory clientFactory = JaxWsDynamicClientFactory.newInstance();
				Client client = clientFactory.createClient(wsdlURL);
				QName opName = WsUtil.getOperationName(client.getEndpoint(), "uploadAttachment");
				Object[] result =  client.invoke(opName,"", fileName, buf, offset, dirFileName);
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
			if (null != fs){
				fs.close();
			}
		}
	}
}
