package avicit.bpmevent;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.Serializable;

public class CalculatorBean implements Serializable {

	private static final long serialVersionUID = 1L;
	Logger logger = LoggerFactory.getLogger(this.getClass());
	//类变量，可以通过java节点中成员变量改变值
	String state;
	// 加法运算
	public String add(Integer x, Integer y) {
		logger.info("Java1节点状态为："+state);
		logger.info("Java1节点执行方法："+x+"+"+y+"="+(x+y));
		return String.valueOf(x + y);
	}
	//打招呼
	public String say(String name, Integer y) {
		logger.info("Java2节点状态为："+state);
		logger.info("Java2节点执行方法：打印标题："+name+",总份数："+y);
		return name+","+y;
	}

}
