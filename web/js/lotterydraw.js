$(document).ready(function(){var a=$("#pageDialog");var b=false;$(".lot-btn").click(function(){if(b){return}$("#imgs").rotate(0);b=true;$.ajax({url:"/user/lotteryDrawGo.html?id="+new Date().getTime(),beforeSend:function(){b=true;$("#imgs").rotate({animateTo:360*10,duration:20000,callback:function(){var d='<div class="z-popUp z-pop-box"><span class="gray3">\u7f51\u7edc\u5f02\u5e38\u8bf7\u7a0d\u540e\u518d\u8bd5\uff01</span><a href="javascript:;" title="\u786e\u5b9a" class="z-btn-determine">\u786e\u5b9a</a></div>';var c=function(){a.find("a.z-btn-determine").click(function(){$.PageDialog.close();return false})};$.PageDialog(d,{W:314,H:180,close:true,autoClose:false,ready:c});b=false}})},success:function(c){if(c.count=="-1"){$("#imgs").stopRotate();$("#imgs").rotate({animateTo:360*6,duration:5000,callback:function(){var e='<div class="z-popUp z-pop-box"><span class="gray3" style="padding-bottom:10px;">\u4eb2\uff0c\u60a8\u8fd8\u6ca1\u6709\u767b\u5f55\u54e6\uff01</span><span class="gray3" style="padding-bottom:20px;color:#ca2a44;"><a style="color:#ca2a44;" href="/login/index.html?forward='+escape(location.href)+'">\u3010\u73b0\u5728\u53bb\u767b\u5f55\u3011</a></span><a href="javascript:;" title="\u786e\u5b9a" class="z-btn-determine">\u786e\u5b9a</a></div>';var d=function(){a.find("a.z-btn-determine").click(function(){$.PageDialog.close();return false})};$.PageDialog(e,{W:314,H:180,close:true,autoClose:false,ready:d});b=false}})}else{$("#imgs").stopRotate();$("#imgs").rotate({animateTo:360*6+Number(c.round),duration:5000,callback:function(){alert(Number(c.round));b=false}})}}})})});
