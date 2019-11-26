package avicit.bpmevent;

import avicit.platform6.bpm.api.listener.EventListener;
import avicit.platform6.bpm.api.listener.EventListenerExecution;

public class WsResultVar implements EventListener {

	@Override
	public void notify(EventListenerExecution paramEventListenerExecution) throws Exception {
		//获取WS节点的返回结果
		String wsResult = (String)paramEventListenerExecution.getVariable("arg0");
		System.out.println("=====================");
		System.out.println("SayHello服务的返回值："+wsResult);
		System.out.println("=====================");
		
	}

}
