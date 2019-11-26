package avicit.bpmevent;

import avicit.platform6.bpm.api.listener.EventListener;
import avicit.platform6.bpm.api.listener.EventListenerExecution;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class JavaResultEvent implements EventListener {
	private static final long serialVersionUID = 1L;
	Logger logger = LoggerFactory.getLogger(this.getClass());
	@Override
	public void notify(EventListenerExecution arg0) throws Exception {
		//获取三个Java节点的返回值
		String addRes = arg0.getVariable("addRes").toString();
		String sayRes = arg0.getVariable("sayRes").toString();
		//String springRes = arg0.getVariable("springRes").toString();
		logger.info("java1节点的返回参数："+addRes);
		logger.info("java2节点的返回参数："+sayRes);
		//logger.info("java3节点的返回参数："+springRes);
	}
}
