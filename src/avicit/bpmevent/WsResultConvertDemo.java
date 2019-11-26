package avicit.bpmevent;

import avicit.platform6.bpm.api.model.OpenExecution;
import avicit.platform6.bpm.bpmreform.event.WsResultConvertInterface;

public class WsResultConvertDemo implements WsResultConvertInterface {

	@Override
	public Object getReslut(String arg0, OpenExecution arg1) {
        System.out.println("111:"+arg0);
        String arg="["+arg0+"]";
       /* List<JSONObject> jsonObjectList = JSON.parseArray(arg, JSONObject.class);
        for (JSONObject jsonObject2 : jsonObjectList) {
           String id = jsonObject2.getString("id");
           String name = jsonObject2.getString("name");
           System.out.println(id+name);
        }*/

        return arg;
	}
}
