package com.eypg.service;

import com.eypg.dao.Pagination;
import com.eypg.pojo.Commissionpoints;

public abstract interface CommissionpointsService
  extends TService<Commissionpoints, Integer>
{
  public abstract Pagination CommissionPoints(String paramString1, String paramString2, String paramString3, int paramInt1, int paramInt2);
  
  public abstract Double totalPay(String startDate, String endDate);
  
  public abstract Double totalAdd(String startDate, String endDate);
  
  public abstract Integer getCommissionPointsListByCount(String paramString1, String paramString2, String paramString3);
  
}
