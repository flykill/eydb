package com.eypg.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.eypg.pojo.Commissionpoints;
import com.eypg.pojo.Commissionquery;
import com.eypg.pojo.Consumerdetail;
import com.eypg.pojo.Consumetable;
import com.eypg.pojo.Latestlottery;
import com.eypg.pojo.Lotteryproductutil;
import com.eypg.pojo.Product;
import com.eypg.pojo.ProductCart;
import com.eypg.pojo.ProductJSON;
import com.eypg.pojo.Randomnumber;
import com.eypg.pojo.Spellbuyproduct;
import com.eypg.pojo.Spellbuyrecord;
import com.eypg.pojo.User;
import com.eypg.service.CommissionpointsService;
import com.eypg.service.CommissionqueryService;
import com.eypg.service.ConsumerdetailService;
import com.eypg.service.ConsumetableService;
import com.eypg.service.LatestlotteryService;
import com.eypg.service.LotteryproductutilService;
import com.eypg.service.ProductService;
import com.eypg.service.RandomnumberService;
import com.eypg.service.SpellbuyproductService;
import com.eypg.service.SpellbuyrecordService;
import com.eypg.service.UserService;
import com.eypg.tenpay.RequestHandler;
import com.eypg.tenpay.ResponseHandler;
import com.eypg.tenpay.client.ClientResponseHandler;
import com.eypg.tenpay.client.TenpayHttpClient;
import com.eypg.tenpay.config.TenpayConfig;
import com.eypg.tenpay.util.TenpayUtil;
import com.eypg.util.AliyunOcsSampleHelp;
import com.eypg.util.ApplicationListenerImpl;
import com.eypg.util.DateUtil;
import com.eypg.util.RandomUtil;
import com.eypg.util.RequestUtils;
import com.eypg.util.StringUtil;
import com.eypg.util.Struts2Utils;

@Component("TenpayAction")
public class TenpayAction extends BaseAction
{
  private static final long serialVersionUID = 2460509323066698846L;
  RandomUtil randomUtil = new RandomUtil();
  @Autowired
  ConsumetableService consumetableService;
  @Autowired
  ConsumerdetailService consumerdetailService;
  @Autowired
  private SpellbuyrecordService spellbuyrecordService;
  @Autowired
  private RandomnumberService randomnumberService;
  @Autowired
  private UserService userService;
  @Autowired
  private SpellbuyproductService spellbuyproductService;
  @Autowired
  private LatestlotteryService latestlotteryService;
  @Autowired
  private ProductService productService;
  @Autowired
  CommissionqueryService commissionqueryService;
  @Autowired
  CommissionpointsService commissionpointsService;
  @Autowired
  LotteryproductutilService lotteryproductutilService;
  private User user;
  private String userId;
  private Consumetable consumetable;
  private ProductCart productCart;
  private Product product;
  private Spellbuyproduct spellbuyproduct;
  private Spellbuyrecord spellbuyrecord;
  private Randomnumber randomnumber;
  private Latestlottery latestlottery;
  private Consumerdetail consumerdetail;
  private List<ProductCart> productCartList;
  private List<ProductJSON> successCartList;
  private ProductJSON productJSON;
  private String paymentStatus;
  private Commissionquery commissionquery;
  private Commissionpoints commissionpoints;
  private Lotteryproductutil lotteryproductutil;
  private String currTime = TenpayUtil.getCurrTime();
  private String strTime = currTime.substring(8, currTime.length());
  private String strRandom = TenpayUtil.buildRandom(4)+"";
  private String strReq = strTime + strRandom;
  private String out_trade_no = strReq;
  private Integer moneyCount;
  private String productBody = "";
  private String productName;
  private String bank_type;
  private String hidUseBalance;
  private String integral;
  private String requestUrl;
  Random random = new Random();
  Calendar calendar = Calendar.getInstance();
  HttpServletRequest request = null;
  HttpServletResponse response = null;
  
  public String goPay()
    throws ServletException, IOException
  {
    request = Struts2Utils.getRequest();
    response = Struts2Utils.getResponse();
    boolean flag = false;
    
    RequestHandler reqHandler = new RequestHandler(request, response);
    reqHandler.init();
    

    reqHandler.setKey(TenpayConfig.key);
    
    reqHandler.setGateUrl("https://gw.tenpay.com/gateway/pay.htm");
    


    moneyCount = Integer.valueOf(moneyCount.intValue() * 100);
    reqHandler.setParameter("partner", TenpayConfig.partner);
    reqHandler.setParameter("out_trade_no", out_trade_no);
    reqHandler.setParameter("total_fee", moneyCount+"");
    reqHandler.setParameter("return_url", TenpayConfig.return_url);
    reqHandler.setParameter("notify_url", TenpayConfig.notify_url);
    reqHandler.setParameter("body", ApplicationListenerImpl.sysConfigureJson.getSaitName() + "(" + ApplicationListenerImpl.sysConfigureJson.getWwwUrl() + ")");
    reqHandler.setParameter("bank_type", bank_type);
    
    reqHandler.setParameter("spbill_create_ip", RequestUtils.getIpAddr(request));
    reqHandler.setParameter("fee_type", "1");
    reqHandler.setParameter("subject", productName);
    

    reqHandler.setParameter("sign_type", "MD5");
    reqHandler.setParameter("service_version", "1.0");
    reqHandler.setParameter("input_charset", "UTF-8");
    reqHandler.setParameter("sign_key_index", "1");
    


    reqHandler.setParameter("attach", integral);
    














    requestUrl = reqHandler.getRequestURL();
    

    String debuginfo = reqHandler.getDebugInfo();
    System.out.println("requestUrl:  " + requestUrl);
    System.out.println("sign_String:  " + debuginfo);
    

    response.sendRedirect(requestUrl);
    


    return null;
  }
  
  public String returnUrl()
  {
    request = Struts2Utils.getRequest();
    response = Struts2Utils.getResponse();
    Cookie[] cookies = request.getCookies();
    JSONArray array = null;
    
    ResponseHandler resHandler = new ResponseHandler(request, response);
    resHandler.setKey(TenpayConfig.key);
    System.out.println("前台回调返回参数:" + resHandler.getAllParameters());
    boolean flag = false;
    String buyproduct = "";
    if (resHandler.isTenpaySign())
    {
      String notify_id = resHandler.getParameter("notify_id");
      
      String out_trade_no = resHandler.getParameter("out_trade_no");
      
      String transaction_id = resHandler.getParameter("transaction_id");
      
      String total_fee = resHandler.getParameter("total_fee");
      
      String discount = resHandler.getParameter("discount");
      
      String trade_state = resHandler.getParameter("trade_state");
      
      String trade_mode = resHandler.getParameter("trade_mode");
      
      String integral = resHandler.getParameter("attach");
      
      System.err.println("returnUrl   integral:" + integral);
      if ("1".equals(trade_mode))
      {
        if ("0".equals(trade_state)) {
          try
          {
            if (AliyunOcsSampleHelp.getIMemcachedCache().get(transaction_id) == null)
            {
              productCartList = new ArrayList();
              successCartList = new ArrayList();
              try
              {
                consumetable = consumetableService.findByOutTradeNo(out_trade_no);
                double money = Double.parseDouble(String.valueOf(total_fee));
                money *= 0.01D;
                if ((consumetable.getMoney().equals(Double.valueOf(money))) && (consumetable.getTransactionId().equals(transaction_id)))
                {
                  JSONArray payInfo2 = (JSONArray)AliyunOcsSampleHelp.getIMemcachedCache().get("doPay" + out_trade_no);
                  JSONObject object = payInfo2.getJSONObject(0);
                  int userPayType = object.getInt("userPayType");
                  userId = object.getString("userId");
                  moneyCount = Integer.valueOf(object.getInt("moneyCount"));
                  integral = object.getString("integral");
                  int bankMoney = object.getInt("bankMoney");
                  String hidUseBalance = object.getString("hidUseBalance");
                  out_trade_no = object.getString("out_trade_no");
                  productCartList = ((List)AliyunOcsSampleHelp.getIMemcachedCache().get("doPayList" + out_trade_no));
                  
                  successCartList = BuyCartdo(productCartList, Integer.valueOf(userPayType), userId, moneyCount, integral, Integer.valueOf(bankMoney), hidUseBalance, out_trade_no);
                  if (successCartList.size() > 0)
                  {
                    if (request.isRequestedSessionIdFromCookie())
                    {
                      for (int i = 0; i < cookies.length; i++)
                      {
                        Cookie cookie = cookies[i];
                        if (cookie.getName().equals("products"))
                        {
                          new StringUtil();String product = StringUtil.getUTF8URLDecoder(cookie.getValue());
                          if ((product != null) && (!product.equals(""))) {
                            array = JSONArray.fromObject(product);
                          }
                        }
                      }
                      for (int i = 0; i < successCartList.size(); i++)
                      {
                        ProductJSON productJSON = (ProductJSON)successCartList.get(i);
                        if ((array != null) && (!array.toString().equals("[{}]"))) {
                          for (int j = 0; j < array.size();) {
                            try
                            {
                              JSONObject obj = (JSONObject)array.get(j);
                              Integer pid = Integer.valueOf(Integer.parseInt(obj.getString("pId")));
                              boolean f = false;
                              if (productJSON.getProductId().equals(pid))
                              {
                                f = true;
                                array.remove(j);
                                break;
                              }
                              if (f) {}
                              j++;
                            }
                            catch (Exception localException1) {}
                          }
                        }
                      }
                      new StringUtil();String product = StringUtil.getUTF8URLEncoder(array.toString());
                      Cookie cookie = new Cookie("products", product);
                      cookie.setMaxAge(-1);
                      cookie.setPath("/");
                      cookie.setDomain(ApplicationListenerImpl.sysConfigureJson.getDomain());
                      response.addCookie(cookie);
                    }
                    AliyunOcsSampleHelp.getIMemcachedCache().set(out_trade_no, 300, successCartList);
                    Struts2Utils.render("text/html", "<script>window.location.href=\"/mycart/shopok.html?id=" + out_trade_no + "\";</script>", new String[] { "encoding:UTF-8" });
                  }
                }
              }
              catch (Exception e)
              {
                e.printStackTrace();
              }
              System.out.println("即时到帐付款成功");
              AliyunOcsSampleHelp.getIMemcachedCache().set(transaction_id, 7200, "y");
            }
            else
            {
              Struts2Utils.render("text/html", "<script>window.location.href=\"/mycart/shopok.html?id=" + out_trade_no + "\";</script>", new String[] { "encoding:UTF-8" });
            }
          }
          catch (Exception e)
          {
            e.printStackTrace();
          }
        } else {
          System.out.println("即时到帐付款失败");
        }
      }
      else if ("2".equals(trade_mode)) {
        if ("0".equals(trade_state)) {
          System.out.println("中介担保付款成功");
        } else {
          System.out.println("trade_state=" + trade_state);
        }
      }
    }
    else
    {
      System.out.println("认证签名失败");
    }
    String debuginfo = resHandler.getDebugInfo();
    System.out.println("debuginfo:" + debuginfo);
    return "success";
  }
  
  public String notifyUrl()
    throws Exception
  {
    request = Struts2Utils.getRequest();
    response = Struts2Utils.getResponse();
    boolean flag = false;
    String buyproduct = "";
    
    ResponseHandler resHandler = new ResponseHandler(request, response);
    resHandler.setKey(TenpayConfig.key);
    System.out.println("后台回调返回参数:" + resHandler.getAllParameters());
    if (resHandler.isTenpaySign())
    {
      String notify_id = resHandler.getParameter("notify_id");
      
      RequestHandler queryReq = new RequestHandler(null, null);
      
      TenpayHttpClient httpClient = new TenpayHttpClient();
      
      ClientResponseHandler queryRes = new ClientResponseHandler();
      
      String integral = resHandler.getParameter("attach");
      

      queryReq.init();
      queryReq.setKey(TenpayConfig.key);
      queryReq.setGateUrl("https://gw.tenpay.com/gateway/simpleverifynotifyid.xml");
      queryReq.setParameter("partner", TenpayConfig.partner);
      queryReq.setParameter("notify_id", notify_id);
      queryReq.setParameter("attach", integral);
      
      httpClient.setTimeOut(5);
      
      httpClient.setReqContent(queryReq.getRequestURL());
      System.out.println("验证ID请求字符串:" + queryReq.getRequestURL());
      if (httpClient.call())
      {
        queryRes.setContent(httpClient.getResContent());
        System.out.println("验证ID返回字符串:" + httpClient.getResContent());
        queryRes.setKey(TenpayConfig.key);
        
        String retcode = queryRes.getParameter("retcode");
        
        String out_trade_no = resHandler.getParameter("out_trade_no");
        
        String transaction_id = resHandler.getParameter("transaction_id");
        
        String total_fee = resHandler.getParameter("total_fee");
        
        String discount = resHandler.getParameter("discount");
        
        String trade_state = resHandler.getParameter("trade_state");
        
        String trade_mode = resHandler.getParameter("trade_mode");
        if ((queryRes.isTenpaySign()) && ("0".equals(retcode)))
        {
          System.out.println("id验证成功");
          if ("1".equals(trade_mode))
          {
            if ("0".equals(trade_state))
            {
              try
              {
                consumetable = consumetableService.findByOutTradeNo(out_trade_no);
                double money = Double.parseDouble(String.valueOf(total_fee));
                money *= 0.01D;
                System.err.println(consumetable.getMoney());
                System.err.println(money);
                if ((consumetable.getMoney().equals(Double.valueOf(money))) && (consumetable.getTransactionId() == null))
                {
                  consumetable.setTransactionId(transaction_id);
                  consumetableService.add(consumetable);
                  
                  user = ((User)userService.findById(String.valueOf(consumetable.getUserId())));
                  user.setBalance(Double.valueOf(money + user.getBalance().doubleValue()));
                  userService.add(user);
                  
                  flag = true;
                }
              }
              catch (Exception e)
              {
                flag = false;
                e.printStackTrace();
              }
              resHandler.sendToCFT("success");
            }
            else
            {
              System.out.println("即时到账支付失败");
              resHandler.sendToCFT("fail");
            }
          }
          else if ("2".equals(trade_mode))
          {
            int iStatus = TenpayUtil.toInt(trade_state);
            switch (iStatus)
            {
            case 0: 
              break;
            case 1: 
              break;
            case 2: 
              break;
            case 4: 
              break;
            case 5: 
              break;
            case 6: 
              break;
            case 7: 
              break;
            case 8: 
              break;
            case 9: 
              break;
            }
            System.out.println("trade_state = " + trade_state);
            
            resHandler.sendToCFT("success");
          }
        }
        else
        {
          System.out.println("查询验证签名失败或id验证失败,retcode:" + queryRes.getParameter("retcode"));
        }
      }
      else
      {
        System.out.println("后台调用通信失败");
        System.out.println(httpClient.getResponseCode());
        System.out.println(httpClient.getErrInfo());
      }
    }
    else
    {
      System.out.println("通知签名验证失败");
    }
    return null;
  }
  
  public synchronized List<ProductJSON> BuyCartdo(List<ProductCart> productCartList, Integer userPayType, String userId, Integer moneyCount, String integral, Integer bankMoney, String hidUseBalance, String out_trade_no)
  {
    boolean flag = false;
    List<ProductJSON> successCartList = new ArrayList();
    Integer fb = Integer.valueOf(0);
    Integer fi = Integer.valueOf(0);
    try
    {
      fb = Integer.valueOf(Integer.parseInt(hidUseBalance) + bankMoney.intValue());
      fi = Integer.valueOf(Integer.parseInt(integral));
    }
    catch (Exception e)
    {
      flag = false;
      return successCartList;
    }
    User user = null;
    if (StringUtil.isNotBlank(userId)) {
      user = (User)userService.findById(userId);
    }
    if (productCartList.size() > 0)
    {
      Integer points;
      try
      {
        if (userPayType.intValue() == 1)
        {
          if (Integer.parseInt(hidUseBalance) > 0) {
            if (user.getBalance().doubleValue() >= Integer.parseInt(hidUseBalance))
            {
              Double temp = Double.valueOf(user.getBalance().doubleValue() - Integer.parseInt(hidUseBalance));
              points = user.getCommissionPoints();
              user.setBalance(temp);
              user.setCommissionPoints(Integer.valueOf(points.intValue() + Integer.parseInt(hidUseBalance) * ApplicationListenerImpl.sysConfigureJson.getBuyProduct().intValue()));
              flag = true;
            }
            else
            {
              flag = false;
              Struts2Utils.render("text/html", "<script>alert(\"余额不足，支付失败！\");window.location.href=\"/mycart/index.html\";</script>", new String[] { "encoding:UTF-8" });
            }
          }
        }
        else if (userPayType.intValue() == 2)
        {
          if (user.getCommissionPoints().intValue() >= Integer.parseInt(integral))
          {
            points = user.getCommissionPoints();
            user.setCommissionPoints(Integer.valueOf(points.intValue() - Integer.parseInt(integral)));
            flag = true;
          }
          else
          {
            flag = false;
            Struts2Utils.render("text/html", "<script>alert(\"福分不足，支付失败！\");window.location.href=\"/mycart/index.html\";</script>", new String[] { "encoding:UTF-8" });
          }
        }
        else if (userPayType.intValue() == 3)
        {
          if (Integer.parseInt(hidUseBalance) > 0) {
            if (user.getBalance().doubleValue() >= Integer.parseInt(hidUseBalance))
            {
              Double temp = Double.valueOf(user.getBalance().doubleValue() - Integer.parseInt(hidUseBalance));
              points = user.getCommissionPoints();
              user.setBalance(temp);
              user.setCommissionPoints(Integer.valueOf(points.intValue() + Integer.parseInt(hidUseBalance) * ApplicationListenerImpl.sysConfigureJson.getBuyProduct().intValue()));
              flag = true;
            }
            else
            {
              flag = false;
              Struts2Utils.render("text/html", "<script>alert(\"余额不足，支付失败！\");window.location.href=\"/mycart/index.html\";</script>", new String[] { "encoding:UTF-8" });
            }
          }
          if (Integer.parseInt(integral) >= 100) {
            if (user.getCommissionPoints().intValue() >= Integer.parseInt(integral))
            {
              points = user.getCommissionPoints();
              user.setCommissionPoints(Integer.valueOf(points.intValue() - Integer.parseInt(integral)));
              flag = true;
            }
            else
            {
              flag = false;
              Struts2Utils.render("text/html", "<script>alert(\"福分不足，支付失败！\");window.location.href=\"/mycart/index.html\";</script>", new String[] { "encoding:UTF-8" });
            }
          }
        }
        else if (userPayType.intValue() == 4)
        {
          if (Integer.parseInt(hidUseBalance) > 0) {
            if (user.getBalance().doubleValue() >= Integer.parseInt(hidUseBalance))
            {
              Double temp = Double.valueOf(user.getBalance().doubleValue() - Integer.parseInt(hidUseBalance));
              points = user.getCommissionPoints();
              user.setBalance(temp);
              user.setCommissionPoints(Integer.valueOf(points.intValue() + Integer.parseInt(hidUseBalance) * ApplicationListenerImpl.sysConfigureJson.getBuyProduct().intValue()));
              flag = true;
            }
            else
            {
              flag = false;
              Struts2Utils.render("text/html", "<script>alert(\"余额不足，支付失败！\");window.location.href=\"/mycart/index.html\";</script>", new String[] { "encoding:UTF-8" });
            }
          }
          if (Integer.parseInt(integral) >= 100) {
            if (user.getCommissionPoints().intValue() >= Integer.parseInt(integral))
            {
              points = user.getCommissionPoints();
              user.setCommissionPoints(Integer.valueOf(points.intValue() - Integer.parseInt(integral)));
              flag = true;
            }
            else
            {
              flag = false;
              Struts2Utils.render("text/html", "<script>alert(\"福分不足，支付失败！\");window.location.href=\"/mycart/index.html\";</script>", new String[] { "encoding:UTF-8" });
            }
          }
          if (bankMoney.intValue() > 0) {
            if (user.getBalance().doubleValue() >= bankMoney.intValue())
            {
              Double temp = Double.valueOf(user.getBalance().doubleValue() - bankMoney.intValue());
              points = user.getCommissionPoints();
              user.setBalance(temp);
              user.setCommissionPoints(Integer.valueOf(points.intValue() + bankMoney.intValue() * ApplicationListenerImpl.sysConfigureJson.getBuyProduct().intValue()));
              flag = true;
            }
            else
            {
              flag = false;
              Struts2Utils.render("text/html", "<script>alert(\"余额不足，支付失败！\");window.location.href=\"/mycart/index.html\";</script>", new String[] { "encoding:UTF-8" });
            }
          }
        }
      }
      catch (Exception e)
      {
        flag = false;
        System.err.println("扣款处理出错");
      }
      if (flag) {
        for (ProductCart productCart : productCartList)
        {
          Integer count = Integer.valueOf(0);
          try
          {
            Consumerdetail consumerdetail = new Consumerdetail();
            Spellbuyrecord spellbuyrecord = new Spellbuyrecord();
            ProductJSON productJSON = new ProductJSON();
            Commissionquery commissionquery = new Commissionquery();
            Spellbuyproduct spellbuyproduct = (Spellbuyproduct)spellbuyproductService.findById(productCart.getProductId().toString());
            if (spellbuyproduct.getSpellbuyLimit().intValue() > 0)
            {
              if (StringUtil.isNotBlank(userId))
              {
                Integer limitNum = Integer.valueOf(0);
                try
                {
                  List<Randomnumber> dataList = spellbuyrecordService.getRandomNumberList(spellbuyproduct.getSpellbuyProductId().toString(), userId);
                  for (Randomnumber randomnumber : dataList) {
                    try
                    {
                      String[] randoms = randomnumber.getRandomNumber().split(",");
                      limitNum = Integer.valueOf(limitNum.intValue() + randoms.length);
                    }
                    catch (Exception e)
                    {
                      e.printStackTrace();
                    }
                  }
                }
                catch (Exception e)
                {
                  e.printStackTrace();
                }
                Integer limit = Integer.valueOf(spellbuyproduct.getSpellbuyLimit().intValue() - limitNum.intValue());
                if (productCart.getCount().intValue() > limit.intValue()) {
                  count = limit;
                } else {
                  count = productCart.getCount();
                }
                productCart.setMyLimitSales(limitNum);
              }
              else
              {
                Integer limit = spellbuyproduct.getSpellbuyLimit();
                if (productCart.getCount().intValue() > limit.intValue()) {
                  count = limit;
                } else {
                  count = productCart.getCount();
                }
                productCart.setMyLimitSales(Integer.valueOf(0));
              }
            }
            else
            {
              Integer CurrentPrice = spellbuyproduct.getSpellbuyCount();
              if (spellbuyproduct.getSpellbuyCount().intValue() + productCart.getCount().intValue() > productCart.getProductPrice().intValue()) {
                count = Integer.valueOf(productCart.getProductPrice().intValue() - spellbuyproduct.getSpellbuyCount().intValue());
              } else {
                count = productCart.getCount();
              }
              productCart.setMyLimitSales(Integer.valueOf(0));
            }
            if (count.intValue() > 0)
            {
              try
              {
                if (userPayType.intValue() == 1)
                {
                  consumerdetail.setBuyCount(count);
                  consumerdetail.setBuyMoney(Double.valueOf(Double.parseDouble(String.valueOf(count))));
                  consumerdetail.setConsumetableId(out_trade_no);
                  consumerdetail.setProductId(productCart.getProductId());
                  consumerdetail.setProductName(productCart.getProductName());
                  consumerdetail.setProductPeriod(productCart.getProductPeriod());
                  consumerdetail.setProductTitle(productCart.getProductTitle());
                  consumerdetailService.add(consumerdetail);
                  if (user.getInvite() != null)
                  {
                    User userCommission = (User)userService.findById(String.valueOf(user.getInvite()));
                    double tempCommissionCount = userCommission.getCommissionCount().doubleValue();
                    double commissionBalance = userCommission.getCommissionBalance().doubleValue();
                    tempCommissionCount += Double.parseDouble(String.valueOf(count)) * ApplicationListenerImpl.sysConfigureJson.getCommission().doubleValue();
                    commissionBalance += Double.parseDouble(String.valueOf(count)) * ApplicationListenerImpl.sysConfigureJson.getCommission().doubleValue();
                    userCommission.setCommissionCount(Double.valueOf(tempCommissionCount));
                    userCommission.setCommissionBalance(Double.valueOf(commissionBalance));
                    userService.add(userCommission);
                    commissionquery.setBuyMoney(Double.valueOf(Double.parseDouble(String.valueOf(count))));
                    commissionquery.setCommission(Double.valueOf(Double.parseDouble(String.valueOf(count)) * ApplicationListenerImpl.sysConfigureJson.getCommission().doubleValue()));
                    commissionquery.setDate(DateUtil.DateTimeToStr(new Date()));
                    commissionquery.setDescription(ApplicationListenerImpl.sysConfigureJson.getShortName() + "商品编码(" + productCart.getProductId() + ")获得佣金");
                    commissionquery.setInvitedId(user.getInvite());
                    commissionquery.setToUserId(user.getUserId());
                    commissionqueryService.add(commissionquery);
                  }
                  Commissionpoints commissionpoints = new Commissionpoints();
                  commissionpoints.setDate(DateUtil.DateTimeToStr(new Date()));
                  commissionpoints.setDetailed(ApplicationListenerImpl.sysConfigureJson.getShortName() + "商品编码(" + spellbuyproduct.getSpellbuyProductId() + ")支付" + count + "元获得福分");
                  commissionpoints.setPay("+" + count.intValue() * ApplicationListenerImpl.sysConfigureJson.getBuyProduct().intValue());
                  commissionpoints.setToUserId(Integer.valueOf(Integer.parseInt(userId)));
                  commissionpointsService.add(commissionpoints);
                  flag = true;
                }
                else if (userPayType.intValue() == 2)
                {
                  consumerdetail.setBuyCount(count);
                  consumerdetail.setBuyMoney(Double.valueOf(Double.parseDouble(String.valueOf(count))));
                  consumerdetail.setConsumetableId(out_trade_no);
                  consumerdetail.setProductId(productCart.getProductId());
                  consumerdetail.setProductName(productCart.getProductName());
                  consumerdetail.setProductPeriod(productCart.getProductPeriod());
                  consumerdetail.setProductTitle(productCart.getProductTitle());
                  consumerdetailService.add(consumerdetail);
                  
                  Commissionpoints commissionpoints = new Commissionpoints();
                  commissionpoints.setDate(DateUtil.DateTimeToStr(new Date()));
                  commissionpoints.setDetailed(ApplicationListenerImpl.sysConfigureJson.getShortName() + "商品编码(" + spellbuyproduct.getSpellbuyProductId() + ")福分抵扣");
                  commissionpoints.setPay("-" + count.intValue() * 100);
                  commissionpoints.setToUserId(Integer.valueOf(Integer.parseInt(userId)));
                  commissionpointsService.add(commissionpoints);
                  flag = true;
                }
                else if (userPayType.intValue() == 3)
                {
                  Commissionpoints commissionpoints = new Commissionpoints();
                  commissionpoints.setDate(DateUtil.DateTimeToStr(new Date()));
                  if (fb.intValue() >= count.intValue())
                  {
                    commissionpoints.setDetailed(ApplicationListenerImpl.sysConfigureJson.getShortName() + "商品编码(" + spellbuyproduct.getSpellbuyProductId() + ")支付" + count + "元获得福分");
                    commissionpoints.setPay("+" + count.intValue() * ApplicationListenerImpl.sysConfigureJson.getBuyProduct().intValue());
                    fb = Integer.valueOf(fb.intValue() - count.intValue());
                  }
                  else if (fi.intValue() / 100 >= count.intValue())
                  {
                    commissionpoints.setDetailed(ApplicationListenerImpl.sysConfigureJson.getShortName() + "商品编码(" + spellbuyproduct.getSpellbuyProductId() + ")福分抵扣");
                    commissionpoints.setPay("-" + count.intValue() * 100);
                    fi = Integer.valueOf(fi.intValue() - count.intValue() * 100);
                  }
                  commissionpoints.setToUserId(Integer.valueOf(Integer.parseInt(userId)));
                  commissionpointsService.add(commissionpoints);
                  flag = true;
                  
                  consumerdetail.setBuyCount(count);
                  consumerdetail.setBuyMoney(Double.valueOf(Double.parseDouble(String.valueOf(count))));
                  consumerdetail.setConsumetableId(out_trade_no);
                  consumerdetail.setProductId(productCart.getProductId());
                  consumerdetail.setProductName(productCart.getProductName());
                  consumerdetail.setProductPeriod(productCart.getProductPeriod());
                  consumerdetail.setProductTitle(productCart.getProductTitle());
                  consumerdetailService.add(consumerdetail);
                  if (user.getInvite() != null)
                  {
                    User userCommission = (User)userService.findById(String.valueOf(user.getInvite()));
                    double tempCommissionCount = userCommission.getCommissionCount().doubleValue();
                    double commissionBalance = userCommission.getCommissionBalance().doubleValue();
                    tempCommissionCount += Double.parseDouble(String.valueOf(count)) * ApplicationListenerImpl.sysConfigureJson.getCommission().doubleValue();
                    commissionBalance += Double.parseDouble(String.valueOf(count)) * ApplicationListenerImpl.sysConfigureJson.getCommission().doubleValue();
                    userCommission.setCommissionCount(Double.valueOf(tempCommissionCount));
                    userCommission.setCommissionBalance(Double.valueOf(commissionBalance));
                    userService.add(userCommission);
                    commissionquery.setBuyMoney(Double.valueOf(Double.parseDouble(String.valueOf(count))));
                    commissionquery.setCommission(Double.valueOf(Double.parseDouble(String.valueOf(count)) * ApplicationListenerImpl.sysConfigureJson.getCommission().doubleValue()));
                    commissionquery.setDate(DateUtil.DateTimeToStr(new Date()));
                    commissionquery.setDescription(ApplicationListenerImpl.sysConfigureJson.getShortName() + "商品编码(" + productCart.getProductId() + ")获得佣金");
                    commissionquery.setInvitedId(user.getInvite());
                    commissionquery.setToUserId(user.getUserId());
                    commissionqueryService.add(commissionquery);
                  }
                }
                else if (userPayType.intValue() == 4)
                {
                  Commissionpoints commissionpoints = new Commissionpoints();
                  commissionpoints.setDate(DateUtil.DateTimeToStr(new Date()));
                  if (fb.intValue() >= count.intValue())
                  {
                    commissionpoints.setDetailed(ApplicationListenerImpl.sysConfigureJson.getShortName() + "商品编码(" + spellbuyproduct.getSpellbuyProductId() + ")支付" + count + "元获得福分");
                    commissionpoints.setPay("+" + count.intValue() * ApplicationListenerImpl.sysConfigureJson.getBuyProduct().intValue());
                    fb = Integer.valueOf(fb.intValue() - count.intValue());
                  }
                  else if (fi.intValue() / 100 >= count.intValue())
                  {
                    commissionpoints.setDetailed(ApplicationListenerImpl.sysConfigureJson.getShortName() + "商品编码(" + spellbuyproduct.getSpellbuyProductId() + ")福分抵扣");
                    commissionpoints.setPay("-" + count.intValue() * 100);
                    fi = Integer.valueOf(fi.intValue() - count.intValue() * 100);
                  }
                  commissionpoints.setToUserId(Integer.valueOf(Integer.parseInt(userId)));
                  commissionpointsService.add(commissionpoints);
                  flag = true;
                  if (user.getInvite() != null)
                  {
                    User userCommission = (User)userService.findById(String.valueOf(user.getInvite()));
                    double tempCommissionCount = userCommission.getCommissionCount().doubleValue();
                    double commissionBalance = userCommission.getCommissionBalance().doubleValue();
                    tempCommissionCount += Double.parseDouble(String.valueOf(count)) * ApplicationListenerImpl.sysConfigureJson.getCommission().doubleValue();
                    commissionBalance += Double.parseDouble(String.valueOf(count)) * ApplicationListenerImpl.sysConfigureJson.getCommission().doubleValue();
                    userCommission.setCommissionCount(Double.valueOf(tempCommissionCount));
                    userCommission.setCommissionBalance(Double.valueOf(commissionBalance));
                    userService.add(userCommission);
                    commissionquery.setBuyMoney(Double.valueOf(Double.parseDouble(String.valueOf(count))));
                    commissionquery.setCommission(Double.valueOf(Double.parseDouble(String.valueOf(count)) * ApplicationListenerImpl.sysConfigureJson.getCommission().doubleValue()));
                    commissionquery.setDate(DateUtil.DateTimeToStr(new Date()));
                    commissionquery.setDescription(ApplicationListenerImpl.sysConfigureJson.getShortName() + "商品编码(" + productCart.getProductId() + ")获得佣金");
                    commissionquery.setInvitedId(user.getInvite());
                    commissionquery.setToUserId(user.getUserId());
                    commissionqueryService.add(commissionquery);
                  }
                  consumerdetail.setBuyCount(count);
                  consumerdetail.setBuyMoney(Double.valueOf(Double.parseDouble(String.valueOf(count))));
                  consumerdetail.setConsumetableId(out_trade_no);
                  consumerdetail.setProductId(productCart.getProductId());
                  consumerdetail.setProductName(productCart.getProductName());
                  consumerdetail.setProductPeriod(productCart.getProductPeriod());
                  consumerdetail.setProductTitle(productCart.getProductTitle());
                  consumerdetailService.add(consumerdetail);
                }
              }
              catch (Exception e)
              {
                flag = false;
                break;
              }
              if (flag)
              {
                spellbuyproduct.setSpellbuyCount(Integer.valueOf(spellbuyproduct.getSpellbuyCount().intValue() + count.intValue()));
                if (spellbuyproduct.getSpellbuyCount().intValue() >= productCart.getProductPrice().intValue())
                {
                  spellbuyproduct.setSpellbuyCount(productCart.getProductPrice());
                  
                  spellbuyproduct.setSpStatus(Integer.valueOf(2));
                  spellbuyproduct.setSpellbuyEndDate(DateUtil.DateTimeToStr(DateUtil.subMinute(new Date(), -3)));
                  try
                  {
                    Lotteryproductutil lotteryproductutil = new Lotteryproductutil();
                    lotteryproductutil.setLotteryProductEndDate(DateUtil.DateTimeToStr(DateUtil.subMinute(new Date(), -3)));
                    lotteryproductutil.setLotteryProductId(spellbuyproduct.getSpellbuyProductId());
                    lotteryproductutil.setLotteryProductImg(productCart.getHeadImage());
                    lotteryproductutil.setLotteryProductName(productCart.getProductName());
                    lotteryproductutil.setLotteryProductPeriod(spellbuyproduct.getProductPeriod());
                    lotteryproductutil.setLotteryProductPrice(spellbuyproduct.getSpellbuyPrice());
                    lotteryproductutil.setLotteryProductTitle(productCart.getProductTitle());
                    lotteryproductutilService.add(lotteryproductutil);
                  }
                  catch (Exception localException1) {}
                }
                spellbuyproductService.add(spellbuyproduct);
                try
                {
                  Product product = (Product)AliyunOcsSampleHelp.getIMemcachedCache().get("lotteryUtil_product_" + spellbuyproduct.getFkProductId());
                  if (product == null)
                  {
                    product = (Product)productService.findById(String.valueOf(spellbuyproduct.getFkProductId()));
                    AliyunOcsSampleHelp.getIMemcachedCache().set("lotteryUtil_product_" + spellbuyproduct.getFkProductId(), 1800, product);
                  }
                  if (product.getStatus().intValue() == 1)
                  {
                    int productPeriod = spellbuyproduct.getProductPeriod().intValue();
                    List<Spellbuyproduct> spellbuyproductOld = spellbuyproductService.findSpellbuyproductByProductIdIsStatus(spellbuyproduct.getFkProductId());
                    if (spellbuyproductOld.size() == 0) {
                      try
                      {
                        Spellbuyproduct spellbuyproduct2 = new Spellbuyproduct();
                        spellbuyproduct2.setFkProductId(spellbuyproduct.getFkProductId());
                        spellbuyproduct2.setProductPeriod(Integer.valueOf(++productPeriod));
                        spellbuyproduct2.setSpellbuyCount(Integer.valueOf(0));
                        spellbuyproduct2.setSpellbuyType(Integer.valueOf(0));
                        spellbuyproduct2.setSpellbuyEndDate(DateUtil.DateTimeToStr(new Date()));
                        spellbuyproduct2.setSpellbuyPrice(product.getProductPrice());
                        spellbuyproduct2.setSpSinglePrice(product.getSinglePrice());
                        spellbuyproduct2.setSpellbuyLimit(product.getProductLimit());
                        spellbuyproduct2.setSpellbuyStartDate(DateUtil.DateTimeToStr(new Date()));
                        spellbuyproduct2.setSpStatus(Integer.valueOf(0));
                        if (product.getAttribute71().equals("hot")) {
                          spellbuyproduct2.setSpellbuyType(Integer.valueOf(8));
                        } else {
                          spellbuyproduct2.setSpellbuyType(Integer.valueOf(0));
                        }
                        spellbuyproductService.add(spellbuyproduct2);
                      }
                      catch (Exception e)
                      {
                        e.printStackTrace();
                      }
                    }
                  }
                  spellbuyrecord.setFkSpellbuyProductId(spellbuyproduct.getSpellbuyProductId());
                }
                catch (Exception e)
                {
                  e.printStackTrace();
                }
                spellbuyrecord.setBuyer(user.getUserId());
                spellbuyrecord.setBuyPrice(count);
                spellbuyrecord.setBuyDate(DateUtil.DateTimeToStrBySSS(new Date()));
                spellbuyrecord.setSpWinningStatus("0");
                spellbuyrecord.setBuyStatus("0");
                spellbuyrecord.setSpRandomNo("");
                String ip = Struts2Utils.getRequest().getHeader("X-Real-IP");
                if (ip == null) {
                  ip = "127.0.0.1";
                }
                spellbuyrecord.setBuyIp(ip);
                String buyLocal = RegisterAction.seeker.getAddress(ip);
                spellbuyrecord.setBuyLocal(buyLocal);
                spellbuyrecord.setBuySource(Integer.valueOf(0));
                spellbuyrecordService.add(spellbuyrecord);
                Randomnumber randomnumber = new Randomnumber();
                randomnumber.setProductId(productCart.getProductId());
                
                List<Randomnumber> RandomnumberList = randomnumberService
                	.query(" from Randomnumber where productId='" + spellbuyproduct.getSpellbuyProductId() + "'");
                List<String> oldRandomList = new ArrayList();
                for (Randomnumber randomnumber1 : RandomnumberList) {
                  if (randomnumber1.getRandomNumber().contains(","))
                  {
                    String[] rs = randomnumber1.getRandomNumber().split(",");
                    for (String string : rs) {
                      oldRandomList.add(string);
                    }
                  }
                  else
                  {
                    oldRandomList.add(randomnumber1.getRandomNumber());
                  }
                }
                randomnumber.setRandomNumber(RandomUtil.newRandom(count.intValue(), spellbuyproduct.getSpellbuyPrice().intValue(), oldRandomList));
                
                randomnumber.setSpellbuyrecordId(spellbuyrecord.getSpellbuyRecordId());
                randomnumber.setBuyDate(spellbuyrecord.getBuyDate());
                randomnumber.setUserId(Integer.valueOf(Integer.parseInt(userId)));
                randomnumberService.add(randomnumber);
                
                Integer experience = user.getExperience();
                experience = Integer.valueOf(experience.intValue() + count.intValue() * 10);
                user.setExperience(experience);
                userService.add(user);
                

                productJSON.setBuyDate(spellbuyrecord.getBuyDate());
                productJSON.setProductId(spellbuyproduct.getFkProductId());
                productJSON.setSpellbuyProductId(spellbuyproduct.getSpellbuyProductId());
                productJSON.setProductName(productCart.getProductName());
                productJSON.setProductPeriod(productCart.getProductPeriod());
                productJSON.setProductTitle(productCart.getProductTitle());
                productJSON.setBuyCount(count);
                successCartList.add(productJSON);
              }
            }
          }
          catch (Exception e)
          {
            flag = false;
            e.printStackTrace();
          }
        }
      }
    }
    return successCartList;
  }
  
  public Integer getMoneyCount()
  {
    return moneyCount;
  }
  
  public void setMoneyCount(Integer moneyCount)
  {
    this.moneyCount = moneyCount;
  }
  
  public String getProductBody()
  {
    return productBody;
  }
  
  public void setProductBody(String productBody)
  {
    this.productBody = productBody;
  }
  
  public String getProductName()
  {
    return productName;
  }
  
  public void setProductName(String productName)
  {
    this.productName = productName;
  }
  
  public String getBank_type()
  {
    return bank_type;
  }
  
  public void setBank_type(String bank_type)
  {
    this.bank_type = bank_type;
  }
  
  public String getCurrTime()
  {
    return currTime;
  }
  
  public void setCurrTime(String currTime)
  {
    this.currTime = currTime;
  }
  
  public String getStrTime()
  {
    return strTime;
  }
  
  public void setStrTime(String strTime)
  {
    this.strTime = strTime;
  }
  
  public String getStrRandom()
  {
    return strRandom;
  }
  
  public void setStrRandom(String strRandom)
  {
    this.strRandom = strRandom;
  }
  
  public String getStrReq()
  {
    return strReq;
  }
  
  public void setStrReq(String strReq)
  {
    this.strReq = strReq;
  }
  
  public String getOut_trade_no()
  {
    return out_trade_no;
  }
  
  public void setOut_trade_no(String out_trade_no)
  {
    this.out_trade_no = out_trade_no;
  }
  
  public String getRequestUrl()
  {
    return requestUrl;
  }
  
  public void setRequestUrl(String requestUrl)
  {
    this.requestUrl = requestUrl;
  }
  
  public String getHidUseBalance()
  {
    return hidUseBalance;
  }
  
  public void setHidUseBalance(String hidUseBalance)
  {
    this.hidUseBalance = hidUseBalance;
  }
  
  public User getUser()
  {
    return user;
  }
  
  public void setUser(User user)
  {
    this.user = user;
  }
  
  public Consumetable getConsumetable()
  {
    return consumetable;
  }
  
  public void setConsumetable(Consumetable consumetable)
  {
    this.consumetable = consumetable;
  }
  
  public List<ProductCart> getProductCartList()
  {
    return productCartList;
  }
  
  public void setProductCartList(List<ProductCart> productCartList)
  {
    this.productCartList = productCartList;
  }
  
  public String getUserId()
  {
    return userId;
  }
  
  public void setUserId(String userId)
  {
    this.userId = userId;
  }
  
  public Consumerdetail getConsumerdetail()
  {
    return consumerdetail;
  }
  
  public void setConsumerdetail(Consumerdetail consumerdetail)
  {
    this.consumerdetail = consumerdetail;
  }
  
  public ProductCart getProductCart()
  {
    return productCart;
  }
  
  public void setProductCart(ProductCart productCart)
  {
    this.productCart = productCart;
  }
  
  public Product getProduct()
  {
    return product;
  }
  
  public void setProduct(Product product)
  {
    this.product = product;
  }
  
  public Spellbuyproduct getSpellbuyproduct()
  {
    return spellbuyproduct;
  }
  
  public void setSpellbuyproduct(Spellbuyproduct spellbuyproduct)
  {
    this.spellbuyproduct = spellbuyproduct;
  }
  
  public String getPaymentStatus()
  {
    return paymentStatus;
  }
  
  public void setPaymentStatus(String paymentStatus)
  {
    this.paymentStatus = paymentStatus;
  }
  
  public Spellbuyrecord getSpellbuyrecord()
  {
    return spellbuyrecord;
  }
  
  public void setSpellbuyrecord(Spellbuyrecord spellbuyrecord)
  {
    this.spellbuyrecord = spellbuyrecord;
  }
  
  public Randomnumber getRandomnumber()
  {
    return randomnumber;
  }
  
  public void setRandomnumber(Randomnumber randomnumber)
  {
    this.randomnumber = randomnumber;
  }
  
  public Latestlottery getLatestlottery()
  {
    return latestlottery;
  }
  
  public void setLatestlottery(Latestlottery latestlottery)
  {
    this.latestlottery = latestlottery;
  }
  
  public List<ProductJSON> getSuccessCartList()
  {
    return successCartList;
  }
  
  public void setSuccessCartList(List<ProductJSON> successCartList)
  {
    this.successCartList = successCartList;
  }
  
  public ProductJSON getProductJSON()
  {
    return productJSON;
  }
  
  public void setProductJSON(ProductJSON productJSON)
  {
    this.productJSON = productJSON;
  }
  
  public Commissionquery getCommissionquery()
  {
    return commissionquery;
  }
  
  public void setCommissionquery(Commissionquery commissionquery)
  {
    this.commissionquery = commissionquery;
  }
  
  public Commissionpoints getCommissionpoints()
  {
    return commissionpoints;
  }
  
  public void setCommissionpoints(Commissionpoints commissionpoints)
  {
    this.commissionpoints = commissionpoints;
  }
  
  public String getIntegral()
  {
    return integral;
  }
  
  public void setIntegral(String integral)
  {
    this.integral = integral;
  }
  
  public Lotteryproductutil getLotteryproductutil()
  {
    return lotteryproductutil;
  }
  
  public void setLotteryproductutil(Lotteryproductutil lotteryproductutil)
  {
    this.lotteryproductutil = lotteryproductutil;
  }
}
