var ShareUrl="";var ShareTitle="";$(function(){var d=$skin;var f=$("#hidRefTitle");var e=function(){var a=$("#referDocument");var h=a.find("ul.process li");$.each(h,function(g){$(this).hover(function(){$(this).find("div").removeClass("hidden")},function(){$(this).find("div").addClass("hidden")})});var c=$("#copyShareText");var b=function(){var u=$("#hidRefType");var q=$("#hidRefValue");var g=$www;if(u.val()=="g"){g=$www+"/products/"+q.val()+".html"}else{if(u.val()=="c"){g=$www+"/products/"+q.val()+".html"}else{if(u.val()=="w"){g=$www+"/lotteryDetail/"+q.val()+".html"}else{if(u.val()=="p"){g=$www+"/shareShow/"+q.val()+".html"}}}}g+="/share.html?uid=";var r=$("#btnCopy");ShareTitle="我刚发现一个很好很好玩的网站，1元就能买IPhone 哦，快去看看吧！";var v=function(){if(f.val()==""){f.val(ShareTitle)}c.val(f.val()+"\n"+ShareUrl);var i=function(k){try{window.clipboardData.clearData();window.clipboardData.setData("Text",k);OKDialog("\u590d\u5236\u6210\u529f\uff01")}catch(j){}};r.click(function(){if(/(msie\s|trident.*rv:)([\w.]+)/.test(navigator.userAgent.toLowerCase())){var j=new RegExp("\n","g");i(c.val().replace(j,""))}else{FailDialog("\u5bf9\u4e0d\u8d77\uff0c\u60a8\u4f7f\u7528\u7684\u662f\u975eIE\u6838\u5fc3\u6d4f\u89c8\u5668\uff0c\u8bf7\u624b\u52a8\u590d\u5236\u5185\u5bb9\u3002",420);c.select()}});r.show();$.getScript(d+"/js/bdshare.js?date=20120525")};var p=$("#hidUID").val();if(parseInt(p)>0){var s=function(){return g+p};var t=function(i){if(i.urls.length>0&&i.urls[0].result){ShareUrl=i.urls[0].url_short;v()}};$.get("/getshorturl.html?uid="+s()+"&callback=?",t)}else{ShareUrl=g;v()}};b()};e()});
