package avicit.bpmevent;

import avicit.platform6.bpm.api.listener.EventListener;
import avicit.platform6.bpm.api.listener.EventListenerExecution;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.ArrayList;
import java.util.List;

public class SqlTaskInfo implements EventListener{
	Logger logger = LoggerFactory.getLogger(this.getClass());
	@Override
	public void notify(EventListenerExecution paramEventListenerExecution) throws Exception {
		//获取三个SQL节点的返回值
		List<Object []> ptList =(ArrayList<Object []>) paramEventListenerExecution.getVariable("platformApplication");
		if(!ptList.isEmpty()){
			for (Object[] objects : ptList) {
				if(objects != null){
					for (int i = 0; i < objects.length; i++) {
						logger.info(objects[i] == null ? "" : "SQL查询--当前应用信息："+objects[i].toString());
					}
				}
			}
		}
		int rsnum = (int)paramEventListenerExecution.getVariable("updateNum");
		logger.info("SQL更新--成功条数："+rsnum);
		String mobile = paramEventListenerExecution.getVariable("phoneNum").toString();
		logger.info("SQL存储过程--执行结果："+mobile);
		
	}

}
