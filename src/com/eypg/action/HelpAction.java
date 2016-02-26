package com.eypg.action;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.eypg.pojo.Qqgroup;
import com.eypg.pojo.Suggestion;
import com.eypg.service.RegionService;
import com.eypg.service.SysConfigureService;
import com.eypg.util.ApplicationListenerImpl;
import com.eypg.util.HTMLInputFilter;
import com.eypg.util.Struts2Utils;

@Component("HelpAction")
public class HelpAction extends BaseAction
{
  private static final long serialVersionUID = -8756837342149838857L;
  private Suggestion suggestion;
  private String rnd;
  @Autowired
  private SysConfigureService sysConfigureService;
  @Autowired
  private RegionService regionService;
  private List<Qqgroup> qqgroupList;
  private String pId;
  private String cId;
  private String dId;
  HttpServletRequest request = null;
  HttpServletResponse response = null;
  static HTMLInputFilter htmlFilter = new HTMLInputFilter();
  
  public String index()
  {
    if (!ApplicationListenerImpl.sysConfigureAuth)
    {
      Struts2Utils.renderHtml("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\"><html><head><title>授权过期 1元拍购开发中心</title><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" /></head><body><div align=\"center\" style=\"color: #f60;font-family: arial,微软雅黑;font-size: 18px;margin-top: 180px;\">该系统授权已过期，请联系管理员重新授权！谢谢合作。<a href=\"http://www.51openos.com\">www.51openos.com</a></div></body></html>", new String[0]);
      

      return null;
    }
    return "index";
  }
  
  public String openCookie()
  {
    return "openCookie";
  }
  
  public String whatPaigou()
  {
    return "whatPaigou";
  }
  
  public String paigouRule()
  {
    return "paigouRule";
  }
  
  public String paigouFlow()
  {
    return "paigouFlow";
  }
  
  public String questionDetail()
  {
    return "questionDetail";
  }
  
  public String agreement()
  {
    return "agreement";
  }
  
  public String genuinetwo()
  {
    return "genuinetwo";
  }
  
  public String genuine()
  {
    return "genuine";
  }
  
  public String securepayment()
  {
    return "securepayment";
  }
  
  public String ship()
  {
    return "ship";
  }
  
  public String suggestion()
  {
    return "suggestion";
  }
  
  public String doSuggestion()
  {
    request = Struts2Utils.getRequest();
    try
    {
      Cookie[] cookies = request.getCookies();
      if (request.isRequestedSessionIdFromCookie()) {
        for (int i = 0; i < cookies.length; i++)
        {
          Cookie cookie = cookies[i];
          if (cookie.getName().equals("rndCode"))
          {
            String rndCode = cookie.getValue();
            if (rnd.trim().equalsIgnoreCase(rndCode))
            {
              String subject = htmlFilter.filter(suggestion.getSubject());
              String userName = htmlFilter.filter(suggestion.getUserName());
              String mobilePhone = htmlFilter.filter(suggestion.getMobilePhone());
              String mail = htmlFilter.filter(suggestion.getMail());
              String postText = htmlFilter.filter(suggestion.getPostText());
              suggestion.setMail(mail);
              suggestion.setMobilePhone(mobilePhone);
              suggestion.setSubject(subject);
              suggestion.setUserName(userName);
              suggestion.setPostText(postText);
              sysConfigureService.doSuggestion(suggestion);
              Struts2Utils.render("text/html", "<script>alert(\"提交成功！感谢您的投诉建议。\");window.location.href=\"/index.html\";</script>", new String[] { "encoding:UTF-8" });
            }
            else
            {
              Struts2Utils.render("text/html", "<script>alert(\"验证码输入错误！\");history.go(-1);</script>", new String[] { "encoding:UTF-8" });
            }
          }
        }
      }
    }
    catch (Exception e)
    {
      e.printStackTrace();
      Struts2Utils.render("text/html", "<script>alert(\"操作失败，请联系管理员！\");history.go(-1);</script>", new String[] { "encoding:UTF-8" });
    }
    return null;
  }
  
  public String deliveryFees()
  {
    return "deliveryFees";
  }
  
  public String prodCheck()
  {
    return "prodCheck";
  }
  
  public String shiptwo()
  {
    return "shiptwo";
  }
  
  public String privacy()
  {
    return "privacy";
  }
  
  public String userExperience()
  {
    return "userExperience";
  }
  
  public String qqgroup()
  {
    qqgroupList = regionService.qqGroupByList(pId, cId, dId);
    return "qqgroup";
  }
  
  public void qqgroupAjax()
  {
    qqgroupList = regionService.qqGroupByList(pId, cId, dId);
    Struts2Utils.renderJson(qqgroupList, new String[0]);
  }
  
  public Suggestion getSuggestion()
  {
    return suggestion;
  }
  
  public void setSuggestion(Suggestion suggestion)
  {
    this.suggestion = suggestion;
  }
  
  public String getRnd()
  {
    return rnd;
  }
  
  public void setRnd(String rnd)
  {
    this.rnd = rnd;
  }
  
  public List<Qqgroup> getQqgroupList()
  {
    return qqgroupList;
  }
  
  public void setQqgroupList(List<Qqgroup> qqgroupList)
  {
    this.qqgroupList = qqgroupList;
  }
  
  public String getPId()
  {
    return pId;
  }
  
  public void setPId(String id)
  {
    pId = id;
  }
  
  public String getCId()
  {
    return cId;
  }
  
  public void setCId(String id)
  {
    cId = id;
  }
  
  public String getDId()
  {
    return dId;
  }
  
  public void setDId(String id)
  {
    dId = id;
  }
}
