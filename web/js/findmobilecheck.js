$(document).ready(function(){var e=$skin;var f=function(a){var b=/^[0-9a-zA-Z]{6,}$/;return b.test(a)};var d=function(){var r=$("#btnSubmitVerify");var b=$("#hidRegMobile").val().trim();var s=$("#mobileCode");var o=$("#hidRegSN").val();var v=$("#checkSN").val().trim();var t=function(){var g=$("#retrySend");g.unbind("click").attr("class","login_Sendoutbut");var h=120;var i=function(){if(h<2){g.bind("click",p).html("\u91cd\u65b0\u53d1\u9001").attr("class","login_SendoutbutClick");return}else{h--;g.html("\u91cd\u65b0\u53d1\u9001("+h+")")}setTimeout(i,1000)};i()};var a=function(g){s.parent().next().html('<span class="tips_txt_Wrong"><s></s>'+g+"</span>")};var p=function(){if(!isLoaded){return}isLoaded=false;$.ajax({url:"/getbackpwd/regSendMes.html",data:"mail="+b,success:function(g){if(g==0){OKDialog("\u9a8c\u8bc1\u7801\u5df2\u53d1\u9001\uff0c\u8bf7\u6ce8\u610f\u67e5\u6536\uff01",250);t()}else{if(g==2){FailDialog("\u5bf9\u4e0d\u8d77\uff0c\u8bf7\u4e0d\u8981\u9891\u7e41\u83b7\u53d6\u624b\u673a\u9a8c\u8bc1\u4fe1\u606f\uff01",320)}else{FailDialog("\u9a8c\u8bc1\u7801\u53d1\u9001\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\uff01",300)}}},error:function(){FailDialog("\u9a8c\u8bc1\u7801\u53d1\u9001\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\uff01",300)}})};var u=function(){if(!isLoaded){return}isLoaded=false;$.ajax({url:"/getbackpwd/findMobileReset.html",data:"mail="+b+"&rnd="+s.val().trim(),success:function(g){if(g==0){location.replace("findreset.html?key="+v);return}else{if(g==2){a("\u9a8c\u8bc1\u7801\u9519\u8bef\uff01")}else{if(g==1){a("\u64cd\u4f5c\u8d85\u65f6\uff0c\u8bf7\u91cd\u65b0\u53d6\u56de\u5bc6\u7801\uff01")}else{a("\u9a8c\u8bc1\u5931\u8d25\uff01")}}}isLoaded=true;r.html("\u63d0\u4ea4\u9a8c\u8bc1").attr("class","login_Email_but")},error:function(){a("\u9a8c\u8bc1\u5931\u8d25\uff01")}});r.html("\u6b63\u5728\u9a8c\u8bc1\uff0c\u8bf7\u7a0d\u540e").attr("class","login_Email_butClick")};var c=function(){if(!isLoaded){return}var g=s.val().trim();if(g==""){a("\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801\uff01")}else{if(f(g)){u()}else{a("\u9a8c\u8bc1\u7801\u8f93\u5165\u9519\u8bef\uff01")}}};var q=function(){if(v!=""){t();r.bind("click",c);s.bind("keydown",function(g){var h=(window.event)?event.keyCode:g.keyCode;if(h==32){return false}else{if(h==13){c();return false}}return true}).focus()}else{location.reload()}};isLoaded=true;q()};d()});
