package com.eypg.util.email;

import com.eypg.pojo.SysConfigure;
import com.eypg.util.ApplicationListenerImpl;

public class EmailProtocol
{
  private String str;
  
  public EmailProtocol(String str)
  {
    this.str = str;
  }
  
  public String getPopProtocol()
  {
    String[] s = str.split("@");
    return "pop3." + s[1];
  }
  
  public String getSmtpProtocol()
  {
    return ApplicationListenerImpl.sysConfigureJson.getMailsmtp();
  }
}
