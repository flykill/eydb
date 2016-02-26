package com.eypg.pojo;

import java.io.Serializable;

public class Message
  implements Serializable
{
  private Integer id;
  private Integer userId;
  private Integer sender;
  private String message;
  private String date;
  private Integer type;
  private Integer status;
  
  public Message() {}
  
  public Message(Integer userId, Integer sender, String message, String date, Integer type, Integer status)
  {
    this.userId = userId;
    this.sender = sender;
    this.message = message;
    this.date = date;
    this.type = type;
    this.status = status;
  }
  
  public Integer getId()
  {
    return id;
  }
  
  public void setId(Integer id)
  {
    this.id = id;
  }
  
  public Integer getUserId()
  {
    return userId;
  }
  
  public void setUserId(Integer userId)
  {
    this.userId = userId;
  }
  
  public Integer getSender()
  {
    return sender;
  }
  
  public void setSender(Integer sender)
  {
    this.sender = sender;
  }
  
  public String getMessage()
  {
    return message;
  }
  
  public void setMessage(String message)
  {
    this.message = message;
  }
  
  public String getDate()
  {
    return date;
  }
  
  public void setDate(String date)
  {
    this.date = date;
  }
  
  public Integer getType()
  {
    return type;
  }
  
  public void setType(Integer type)
  {
    this.type = type;
  }
  
  public Integer getStatus()
  {
    return status;
  }
  
  public void setStatus(Integer status)
  {
    this.status = status;
  }
}
