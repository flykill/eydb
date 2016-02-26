package com.eypg.sms;

import org.apache.commons.lang.StringUtils;

import com.eypg.sms.chuangming.CmSender;
import com.eypg.sms.pig.SmsPigSender;
import com.eypg.sms.smsbao.SmsbaoSender;
import com.eypg.util.ApplicationListenerImpl;
import com.eypg.util.StringUtil;

public class SmsSenderFactory {

	public static SmsSender create() {
		String smsType = ApplicationListenerImpl.sysConfigureJson.getSmsType();
		if (StringUtil.equals(smsType, "chuangming"))
			return new CmSender();
		else if (StringUtil.equals(smsType, "smsbao"))
			return new SmsbaoSender();
		else if (StringUtils.equals(smsType, "smspig"))
			return smspigsender();
		return new CmSender();
	}

	public static SmsSender cmsender() {
		return new CmSender();
	}

	public static SmsSender smsbaosender() {
		return new SmsbaoSender();
	}

	public static SmsSender smspigsender() {
		return new SmsPigSender();
	}
}
