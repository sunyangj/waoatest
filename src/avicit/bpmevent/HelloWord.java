package avicit.bpmevent;

import java.net.URLDecoder;
import java.net.URLEncoder;

/**
 * @Created 金航数码科技有限责任公司.
 * @作者: Administrator
 * @日期: 2019/10/16
 * @时间: 15:40
 * @邮箱：junyangsun@163.com
 * @类说明： @修改记录：测试
 * @psvm
 */
public class HelloWord {
    public static void main(String[] args) {
        try{
            String keyWord = URLDecoder.decode("%E8%AE%A1%E7%AE%97%E6%9C%BA", "UTF-8");
            System.out.println(keyWord);  //输出你好
            // 将普通字符创转换成application/x-www-from-urlencoded字符串
            String urlString = URLEncoder.encode("计算机", "UTF-8");  //输出%C4%E3%BA%C3

            System.out.println(urlString);
        }catch (Exception ex){
            ex.printStackTrace();
        }


    }
}
