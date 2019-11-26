package avicit.bpmevent;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import avicit.ims.oa.administration.oatempdesign.dto.OaWordDTO;
import avicit.ims.oa.administration.oatempdesign.service.OaWordService;
import avicit.platform6.bpm.api.listener.EventListener;
import avicit.platform6.bpm.api.listener.EventListenerExecution;
import avicit.platform6.core.spring.SpringFactory;

/*
 * toPdf
 * 
 * */
public class SendToPdfListener implements EventListener {

	@Override
	public void notify(EventListenerExecution arg) throws Exception {
		
		OaWordService oaWordService = SpringFactory.getBean(OaWordService.class);
	
		//获取form的id
		String formId = (String) arg.getVariable("id");

		OaWordDTO oaWordDTO = oaWordService.queryOaWordByFormId(formId);
		
		if(oaWordDTO!=null){
			byte[] array = oaWordDTO.getWordBody();
			File file = new File("d:/archiveTmp.doc");
            String fileName = "正文内容.doc";
            OutputStream out = new FileOutputStream(file);
            InputStream is = new ByteArrayInputStream(array);
            byte[] buff = new byte[1024];
            int len = 0;
            while((len=is.read(buff))!=-1){
                out.write(buff, 0, len);
            }
            is.close();
            out.close();
        }
		
	}
	
}