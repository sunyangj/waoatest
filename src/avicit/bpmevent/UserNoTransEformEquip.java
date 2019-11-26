package avicit.bpmevent;

import avicit.platform6.api.syspermissionresource.permissionanalysis.core.support.LoaderConstant;
import avicit.platform6.api.sysuser.dto.SysUser;
import avicit.platform6.core.spring.SpringFactory;
import avicit.platform6.eform.tutorial.demoequip.service.DemoEquipService;
import avicit.platform6.eformbpms.view.service.TransferColInterface;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/*
 * UserNo
 * 
 * */
public class UserNoTransEformEquip implements TransferColInterface,LoaderConstant {

    private static Logger logger =LoggerFactory.getLogger(UserNoTransEformEquip.class);
    //示例业务逻辑层对象
    private DemoEquipService demoService = (DemoEquipService)SpringFactory.getBean("demoEquipService");


    @Override
    public String transfer(String s) {
        SysUser user =  LoaderConstant.sysUserLoader.getSysUserById(s);
        return user.getNo();
    }
}