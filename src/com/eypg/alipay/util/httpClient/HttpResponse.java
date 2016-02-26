package com.eypg.alipay.util.httpClient;

import com.eypg.alipay.config.AlipayConfig;
import java.io.UnsupportedEncodingException;
import org.apache.commons.httpclient.Header;

public class HttpResponse
{
  private Header[] responseHeaders;
  private String stringResult;
  private byte[] byteResult;
  
  public Header[] getResponseHeaders()
  {
    return responseHeaders;
  }
  
  public void setResponseHeaders(Header[] responseHeaders)
  {
    this.responseHeaders = responseHeaders;
  }
  
  public byte[] getByteResult()
  {
    if (byteResult != null) {
      return byteResult;
    }
    if (stringResult != null) {
      return stringResult.getBytes();
    }
    return null;
  }
  
  public void setByteResult(byte[] byteResult)
  {
    this.byteResult = byteResult;
  }
  
  public String getStringResult()
    throws UnsupportedEncodingException
  {
    if (stringResult != null) {
      return stringResult;
    }
    if (byteResult != null) {
      return new String(byteResult, AlipayConfig.input_charset);
    }
    return null;
  }
  
  public void setStringResult(String stringResult)
  {
    this.stringResult = stringResult;
  }
}
