$(document).ready(function(){var e=$skin;var d=$www;var f=function(){var a=function(h){var g=/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;return g.test(h)};var b=$("#txtEmail");var r=$("#butSubmit");var n=$("#showErr");var o=["\u90ae\u7bb1\u4e0d\u80fd\u4e3a\u7a7a","\u60a8\u8f93\u5165\u7684\u90ae\u7bb1\u6709\u8bef","\u8be5\u90ae\u7bb1\u5df2\u88ab\u6ce8\u518c"];var q="";var c=function(h,g){h.focus().nextAll("div").eq(0).attr("class","wrong").html("<s></s>"+g)};var t=function(){if(!isLoaded){return}q=b.val();if(q==""){c(b,o[0])}else{if(!a(q)){c(b,o[1])}else{p(q)}}};var p=function(g){if(!isLoaded){return}isLoaded=false;n.attr("class","").html("\u6b63\u5728\u68c0\u67e5\u90ae\u7bb1\u662f\u5426\u5df2\u88ab\u6ce8\u518c\uff0c\u8bf7\u7a0d\u540e\u2026\u2026");$.ajax({url:"/user/isCheckName.html",type:"post",data:"userName="+g,success:function(h){if(h=="true"){n.html("");s()}else{c(b,o[2])}isLoaded=true},error:function(){alert("\u7f51\u7edc\u9519\u8bef\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5!");window.location.href=$www}})};var s=function(){r.val("\u6b63\u5728\u53d1\u9001...");$.ajax({url:"/user/EmailSending.html",data:"userJSON="+q,success:function(h){if(h=="0"){var g='<div class="mAltOK"><s></s>\u53d1\u9001\u6210\u529f\uff0c\u6ce8\u610f\u67e5\u6536\uff01</div>';$.PageDialog(g,{W:200,H:60,close:false,autoClose:true,submit:function(){location.replace("/user/EmailSendSuccess.html?userJSON="+q)}})}else{if(h=="false"){FailDialog("\u53d1\u9001\u5931\u8d25\uff0c\u7a0d\u540e\u518d\u8bd5\uff01");r.val("\u70b9\u51fb\u518d\u6b21\u53d1\u9001")}else{FailDialog("\u4e0d\u8981\u91cd\u8bd5\u592a\u5feb\u54e6\uff0c\u4f11\u606f\u4e24\u5206\u949f\u518d\u8bd5\uff01");r.val("\u70b9\u51fb\u518d\u6b21\u53d1\u9001")}}},error:function(){alert("\u7f51\u7edc\u9519\u8bef\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5!")}})};r.bind("click",function(){t()});b.bind("keydown",function(g){var h=(window.event)?event.keyCode:g.keyCode;if(h==32){return false}else{if(h==13){t();return false}}return true});isLoaded=true};f()});
