var PagePOPLoginOK=null;$(function(){var K=$skin;var Y=function(a,c){var b='<div class="mAltFail"><s></s>'+a+"</div>";$.PageDialog(b,{W:200,H:60,close:false,autoClose:true,submit:function(){if(c!=undefined){c()}}})};var ac=false;var M=true;var al=false;var an=parseInt($("#hidBalance").val());var ad=parseInt($("#hidCountMoney").val());var am=parseInt($("#hidPoints").val());var af=parseInt($("#hidAvailablePoints").val());var W=ad;var O=0;var I=$("#submit_ok");if(ad<1||isNaN(ad)){alert("\u8d2d\u7269\u8f66\u4e2d\u6682\u65f6\u6ca1\u6709\u5546\u54c1!\u9a6c\u4e0a\u53bb"+$shortName+"\u5427!");location.replace($www)}var Q=$("#liPayByPoints");var T=Q.find("input[type='checkbox']").eq(0);var ag=Q.find("p.payment_List_Rc").eq(0);var ak=Q.find("input[name='costPoint']").eq(0);var U=$("#liPayByBalance");var Z=U.find("input[type='checkbox']").eq(0);var V=U.find("p.payment_List_Rc").eq(0);var aj=$("#liPayByOther");var P=$("#divBankList");var aa=$("#pNewPointNum");var L=-1;if(af<100){T.hide()}if(an>0){Z.attr("checked",true);if(an<ad){$("#pBalanceTip").show()}}else{Z.hide()}var N=$("#pPointsTip");var ab=function(a){if(a==""){N.hide()}else{N.html("<span>\u25c6</span><em>\u25c6</em>"+a).show()}};var X=function(a){$(a).unbind("keyup").bind("keyup",function(){M=true;var d=$(this).val();if(d!=""){var b=ad*100;if(d!="0"){var c=/^[1-9]+(\d*)([0]{2})$/;if(!c.test(d)){ab("\u798f\u5206\u5fc5\u987b\u4e3a100\u7684\u6574\u6570\u500d");M=false}else{d=parseInt(d);if(d<100){M=false}if(d>af){ab("\u672c\u6b21\u6d88\u8d39\u6700\u591a\u53ef\u4f7f\u7528 "+af+" \u798f\u5206");M=false}}}}if(!M){O=0;ai(0,an);S(0,"0")}else{ab("");O=d-d%100;ai(O,an)}}).unbind("focus").bind("focus",function(){if(M&&$(this).val()==""){ab("\u798f\u5206\u5fc5\u987b\u4e3a100\u7684\u6574\u6570\u500d")}T.attr("checked",true)}).unbind("blur").bind("blur",function(){if(!M){S(0,"0")}if($(this).val()==""){ab("")}})};var J=function(a){$(a).unbind("click").bind("click",function(){O=0;if($(this).attr("checked")){ak.focus();ab("\u798f\u5206\u5fc5\u987b\u4e3a100\u7684\u6574\u6570\u500d");S(0,"0");ai(0,Z.attr("checked")?an:0)}else{$("#hidIntegral").val("0");ak.val("");ab("");ai(0,an)}})};var ae=function(a){$(a).unbind("click").bind("click",function(){if($(this).attr("checked")){ai(O,an)}else{ai(O,0)}})};var S=function(b,a){switch(b){case 0:if(a==""){if(T.attr("checked")){ag.html('\u798f\u5206\u62b5\u6263\uff1a<span class="orange Fb">0.00</span> \u5143')}else{ag.html("")}}else{ag.html('\u798f\u5206\u62b5\u6263\uff1a<span class="orange Fb">'+a+".00</span> \u5143")}break;case 1:if(a==""){V.html("")}else{if(a<0){ab("\u672c\u6b21\u53ea\u9700\u62b5\u6263"+(ad*100)+"\u798f\u5206");L=0;M=false;U.hide()}else{V.html('\u4f59\u989d\u652f\u4ed8\uff1a<span class="orange F20">'+a+".00</span> \u5143");$("#hidUseBalance").val(a)}}break;case 2:if(a==""){aj.hide();P.hide()}else{var c="\u60a8\u7684\u8d26\u6237\u4f59\u989d\u4e0d\u8db3\uff0c\u8bf7\u9009\u62e9\u4ee5\u4e0b\u65b9\u5f0f\u5b8c\u6210\u652f\u4ed8";if(an>=ad){c="\u60a8\u53ef\u4f7f\u7528\u8d26\u6237\u4f59\u989d\u652f\u4ed8\uff0c\u4e5f\u53ef\u9009\u62e9\u4ee5\u4e0b\u65b9\u5f0f\u5b8c\u6210\u652f\u4ed8"}$("#moneyCount").val(a);aj.find("div.payment_List_Lc").eq(0).html(c);aj.show().find("p.payment_List_Rc").eq(0).html('\u7f51\u94f6\u652f\u4ed8\uff1a<span class="orange F20">'+a+".00</span> \u5143");P.show()}break;case 3:if(a>0){aa.html("\u6210\u529f\u652f\u4ed8\u53ef\u83b7\u5f97<b>"+a+"</b>\u798f\u5206").show()}else{aa.html("&nbsp;")}break}};var ai=function(c,b){var d=0;L=-1;S(0,"");S(1,"");S(2,"");S(3,"");var a=Z.attr("checked");if(c>=100){R(0,true);d=ad-c/100;if(d==0){L=0;S(0,ad);R(1,false);R(2,false)}else{S(0,c/100);if(b>0&&a){R(1,true);var e=b-d;if(e>=0){L=1;S(1,d);R(2,false)}else{L=6;S(1,b);S(2,-e);R(2,true)}S(3,d)}else{L=2;S(2,d);S(3,d);R(2,true)}}}else{R(0,false);if(b>0){if(a){R(1,true);d=b-ad;if(d>=0){L=3;S(1,ad);R(2,false)}else{L=4;S(1,b);S(2,-d);R(2,true)}S(3,ad)}else{R(1,false);L=5;S(2,ad);S(3,ad);R(2,true)}}else{L=5;S(2,ad);S(3,ad);R(2,true)}}};var R=function(a,b){switch(a){case 0:if(!ac&&(b||af>=100)){ac=true;Q.removeClass("point_gray");T.attr("disabled","").attr("checked",true).show();J(T);ak.attr("disabled","").attr("class","pay_input_text").focus();X(ak);ab("\u798f\u5206\u5fc5\u987b\u4e3a100\u7684\u6574\u6570\u500d");S(0,"0")}break;case 1:if(an>0){if(L==0){U.hide()}else{U.show().removeClass("point_gray");Z.attr("disabled","").attr("checked",b);ae(Z)}}break;case 2:if(b){aj.show();P.show();al=true}else{aj.hide();P.hide()}break}};var ah=function(a,c,b){};var H=function(){var a=function(){ak.focus()};I.bind("click",function(){if(!M){Y("\u4f7f\u7528\u798f\u5206\u8f93\u5165\u4e0d\u5bf9\u54e6\uff01",a);return false}$("#hidIntegral").val(O);var e=function(){var g=function(){$("#btnBuyOk","#pageDialog").bind("click",function(){location.replace($www+"/user/UserBuyList.html")});$("#btnReSelect","#pageDialog").bind("click",function(){$.PageDialog.close()})};$.PageDialog($("#payAltBox").html(),{W:405,H:180,title:"\u652f\u4ed8\u63d0\u9192",ready:g})};var c=function(g){var h="";$("input[name=account]").each(function(){if($(this).attr("checked")){h=$(this).val()}});if(h==""){alert("\u8bf7\u9009\u62e9\u652f\u4ed8\u65b9\u5f0f\uff01");return false}if($("#Alipay").attr("checked")==true){$("#toPayForm").attr("action",$www+"/alipay/goPay.action")}else{if($("#Tenpay").attr("checked")==true){$("#toPayForm").attr("action",$www+"/tenpay/goPay.action")}else{if($("#Yeepay").attr("checked")==true){$("#toPayForm").attr("action",$www+"/yeepay/goPay.action")}else{$("#toPayForm").attr("action",$www+"/tenpay/goPay.action")}}}if(/^\d{4}$/.test(h)){$("#hidPayName").val("Tenpay");$("#hidPayBank").val(h)}else{$("#hidPayName").val(h);$("#hidPayBank").val("0")}$("#hidUseBalance").val(g);e()};var b=function(){location.replace($www+"/mycart/goPay.html?moneyCount="+ad+"&integral="+O+"&userPayType=2");return false};var f=function(){location.replace($www+"/mycart/goPay.html?moneyCount="+ad+"&integral="+O+"&hidUseBalance="+$("#hidUseBalance").val()+"&userPayType=1");return false};var d=function(){location.replace($www+"/mycart/goPay.html?moneyCount="+ad+"&integral="+O+"&hidUseBalance="+$("#hidUseBalance").val()+"&userPayType=3");return false};if(L==-1){Y("\u8bf7\u9009\u62e9\u652f\u4ed8\u65b9\u5f0f\uff01")}else{if(L==0){if(O<=0){Y("\u8bf7\u8f93\u5165\u9700\u8981\u62b5\u6263\u7684\u798f\u5206\uff01",a)}else{$.PageDialog.showConfirm("\u60a8\u786e\u5b9a\u4f7f\u7528\u798f\u5206\u62b5\u6263\u5417?",b)}return false}else{if(L==1){$.PageDialog.showConfirm("\u60a8\u786e\u5b9a\u4f7f\u7528\u798f\u5206\u548c\u4f59\u989d\u652f\u4ed8\u5417?",d);return false}if(L==3){$.PageDialog.showConfirm("\u60a8\u786e\u5b9a\u4f7f\u7528\u8d26\u6237\u4f59\u989d\u652f\u4ed8\u5417?",f);return false}else{if(L==4||L==6){c(1)}else{c(0)}}}}return true});ai(0,an)};H()});
