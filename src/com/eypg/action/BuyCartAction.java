package com.eypg.action;

import com.eypg.pojo.Product;
import com.eypg.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("BuyCartAction")
public class BuyCartAction extends BaseAction
{
  private static final long serialVersionUID = -4695580454502546044L;
  private String id;
  @Autowired
  private ProductService productService;
  private Product product;
  
  public String index()
  {
    product = ((Product)productService.findById(id));
    
    return "index";
  }
}
