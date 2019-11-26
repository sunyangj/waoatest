package avicit.bpmevent;

import avicit.platform6.bpm.api.model.OpenExecution;
import avicit.platform6.bpm.pvm.internal.model.RouteConditionInterface;

public class JoinCondition implements RouteConditionInterface{

	@Override
	public boolean evaluate(OpenExecution paramOpenExecution) {
		String num=paramOpenExecution.getVariable("PNUM").toString();
		int printNum = Integer.valueOf(num).intValue();
		String secretLevel = (String)paramOpenExecution.getVariable("SECRETLEVEL");
		//当打印份数大于等于10且密级等于一般涉密人时，进行合并
		if(printNum>=10 && "2".equals(secretLevel)){
			return true;
		}else{
			return false;
		}
	}

}
