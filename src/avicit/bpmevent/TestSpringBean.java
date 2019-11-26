package avicit.bpmevent;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component("TestSpringBean")
public class TestSpringBean {
	Logger logger = LoggerFactory.getLogger(this.getClass());
	String state;
	public void setState(String state){
		this.state = state;
	}
	public String getState() {
		return state;
	}
	public String testFun(String str1) throws Exception{
		logger.info("Java3节点状态为："+this.getState());
		logger.info("Java3节点传入的参数为："+str1);
		return str1; 
	}
}