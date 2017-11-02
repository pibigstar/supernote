package com.lei.utils;
import java.util.ResourceBundle;

/**
 * 读取配置文件工具类
 * Author: pibigstar
 * Created on: 2017年10月15日 下午8:23:03
 */
public class ResourceUtil {
	
	private static final ResourceBundle bundle = java.util.ResourceBundle.getBundle("sysConfig");
	/**
	 * 获取配置文件参数
	 * 
	 * @param name
	 * @return
	 */
	public static final String getConfigByName(String name) {
		return bundle.getString(name);
	}

}
