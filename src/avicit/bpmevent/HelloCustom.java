package avicit.bpmevent;

import avicit.platform6.bpm.api.activity.ActivityExecution;
import avicit.platform6.bpm.api.activity.ExternalActivityBehaviour;

import java.util.Map;

public class HelloCustom implements ExternalActivityBehaviour {
	@Override
	public void execute(ActivityExecution paramActivityExecution) throws Exception {
		// 流程执行Id
		String executionId = paramActivityExecution.getId().toString();
		// 流程实例Id
		String processInstanceId =paramActivityExecution.getProcessInstanceId().toString();
		// 业务表单Id
		String formId1 = (String) paramActivityExecution.getVariable("id");
		// 执行业务逻辑
		System.out.println("Custom1节点输出：Hello");
		// 驱动流程继续流转
		paramActivityExecution.takeDefaultTransition();
		// 流程暂停，等待驱动信号
		// paramActivityExecution.waitForSignal();
	}
	@Override
	public void signal(ActivityExecution paramActivityExecution, String paramString, Map<String, ?> paramMap)
			throws Exception {
		paramActivityExecution.take(paramString);
	}
}
