package com.eypg.sms.pig;

import java.io.IOException;

import net.sf.json.JSONObject;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang.StringUtils;

import com.eypg.sms.SmsSender;

public class SmsPigSender extends SmsSender {

	public boolean send(String phone, String content) {
		String code = null;

		HttpClient client = new HttpClient();
		PostMethod method = new PostMethod("http://10.251.253.247/msg/sms");

		client.getParams().setContentCharset("UTF-8"); 
		method.setRequestHeader("ContentType",
				"application/x-www-form-urlencoded;charset=UTF-8");
		NameValuePair[] data = { new NameValuePair("phone", phone),
				new NameValuePair("appKey", "f524999cfdd9559b"),
				new NameValuePair("content", content), };

		method.setRequestBody(data);

		try {
			client.executeMethod(method);

			String SubmitResult = IOUtils.toString(method.getResponseBodyAsStream());
//			String SubmitResult = method.getResponseBodyAsString();

			JSONObject json = JSONObject.fromObject(SubmitResult);
			if (json.getBoolean("success")) {
				return true;
			}
		} catch (HttpException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	public String getMesBalance() {
		return StringUtils.EMPTY;
	}

	public static void main(String[] args) {
		SmsSender sender = new SmsPigSender();
		sender.send("13067701532", "1111111");
	}
}
