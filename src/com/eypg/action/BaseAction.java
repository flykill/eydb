package com.eypg.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.eypg.pojo.Producttype;
import com.eypg.pojo.Spellbuyproduct;
import com.eypg.service.ProducttypeService;
import com.eypg.util.ApplicationListenerImpl;
import com.opensymphony.xwork2.ActionSupport;

public class BaseAction extends ActionSupport{

	private static final long serialVersionUID = -1532476809752028068L;
	// props
	@Autowired
	ProducttypeService protypeService;
	protected List<Producttype> protypeList;
	
    public List<Producttype> getProtypeList() {
    	if(protypeList != null){
    		return protypeList;
    	}
    	// pzp 2015-09-18
        protypeList  = protypeService.listByProductList();
    	return protypeList;
 	}

	public void setProtypeList(List<Producttype> protypeList) {
    	this.protypeList = protypeList;
	}
      
	public final String getWwwUrl(){
		return ApplicationListenerImpl.sysConfigureJson.getWwwUrl();
	}
	
	protected final String getPeriodName(final StringBuilder sbuf, final Spellbuyproduct sbp){
		sbuf.setLength(0);
		sbuf.append('(').append('第').append(sbp.getProductPeriod()).append('期').append(')');
		sbuf.append(sbp.getProduct().getProductName());
		return sbuf.toString();
	}
	
}
