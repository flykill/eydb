$(function(){var n="----\u8bf7\u9009\u62e9----";var l="";var f=function(a){this.DataTextField=null;this.DataValueField=null;this.DataSource=null;this.OnItemDataBinding=null;this.OnSelectedIndexChanged=null;this.DataBind=function(){a.empty();if(this.DataSource==null){return}var c=this.DataSource.length;var h=false;if(this.OnSelectedIndexChanged!=null){h=true}var g=null;for(var e=0;e<c;e++){g=this.DataSource[e];if(this.OnItemDataBinding!=null){this.OnItemDataBinding(g)}var d=$('<a href="javascript:;" no="'+g[0]+'">'+g[1]+"</a>");if(h){d.bind("click",this.OnSelectedIndexChanged)}a.append(d)}var b=220;if(c<10){b=c*22}a.css("height",b+"px")};this.show=function(){a.show()};this.hide=function(){a.hide()};this.clear=function(){a.empty()}};var i=function(){var w=$("#sltAreaAID");var b=$("#sltAreaBID");var C=$("#sltAreaCID");var g=$("#itemAreaAID");var a=$("#itemAreaBID");var B=$("#itemAreaCID");var d=new f(g);var e=new f(a);var h=new f(B);w.parent().click(function(o){a.hide();B.hide();g.show();o.stopPropagation()});b.parent().click(function(o){g.hide();B.hide();a.show();o.stopPropagation()});C.parent().click(function(o){g.hide();a.hide();B.show();o.stopPropagation()});$("body").click(function(o){g.hide();a.hide();B.hide()});w.html(n);b.html(n);C.html(n);var z=new Object();d.DataTextField=e.DataTextField=h.DataTextField="name";d.DataValueField=e.DataValueField=h.DataValueField="id";var x=function(s,r,q){var o=[0,"----\u8bf7\u9009\u62e9----"];if(r==0){s.DataSource=[o];s.DataBind();return}if(q=="qp"){$.ajax({url:"/user/getProvinceList.html",success:function(p){if(r!=0){p.unshift(o)}z[r]=p;s.DataSource=p;s.DataBind()},error:function(){alert("\u83b7\u53d6\u5730\u533a\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\uff01")}})}else{if(q=="qc"){$.ajax({url:"/user/getCityList.html",data:"id="+r,success:function(p){if(r!=0){p.unshift(o)}z[r]=p;s.DataSource=p;s.DataBind()},error:function(){alert("\u83b7\u53d6\u5730\u533a\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\uff01")}})}else{if(q=="qd"){$.ajax({url:"/user/getDistrictList.html",data:"id="+r,success:function(p){if(r!=0){p.unshift(o)}z[r]=p;s.DataSource=p;s.DataBind()},error:function(){alert("\u83b7\u53d6\u5730\u533a\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\uff01")}})}}}};var c=function(p){var o=$(this);var r=o.attr("no");var q=w.attr("no");if(q!=r){x(e,r,"qc");x(h,0,"");w.attr("no",r).html(o.html());b.attr("no","0").html(n);C.attr("no","0").html(n)}d.hide();p.stopPropagation();k()};var y=function(o){var r=$(this);var p=r.attr("no");var q=b.attr("no");if(q!=p){x(h,p,"qd");b.attr("no",p).html(r.html());C.attr("no","0").html(n)}e.hide();o.stopPropagation();k()};var A=function(o){var q=$(this);var p=q.attr("no");C.attr("no",p).html(q.html());h.hide();o.stopPropagation();k()};d.OnSelectedIndexChanged=c;e.OnSelectedIndexChanged=y;h.OnSelectedIndexChanged=A;this.init=function(){x(d,1,"qp");return};this.getValue=function(){var o=w.attr("no");var p=b.attr("no");var q=C.attr("no");return{areaAID:o,areaBID:p,areaCID:q}}};var j=new i();var m=function(a){return a.replace(/&/ig,"&amp;").replace(/</ig,"&lt;").replace(/>/ig,"&gt;").replace(/\[s:([^\]]+)\]/ig,"<em>$1</em>")};var k=function(){var a=$("#listContents");a.html('<div class="loadImg">\u6b63\u5728\u52a0\u8f7d\u2026</div>');var g=60;var e=1;var b=0;var h=j.getValue();var c={areaAID:h.areaAID==""?0:h.areaAID,areaBID:h.areaBID==""?0:h.areaBID,areaCID:h.areaCID==""?0:h.areaCID};if(!c.areaAID){c.areaAID=0}if(!c.areaBID){c.areaBID=0}if(!c.areaCID){c.areaCID=0}var d=function(){$.ajax({url:"/help/qqgroupAjax.html",data:"pId="+c.areaAID+"&cId="+c.areaBID+"&dId="+c.areaCID,success:function(p){o(p)}});var o=function(r){if(r!=""){var p="<ul>";for(var x=0;x<r.length;x++){var w=r[x];p+='<li><dt><img border="0" alt="'+w.groupName+'" src="/Images/qqgroup.jpg"/></dt><dt>'+m(w.groupName)+"<dd>"+w.groupNo+"</dd></dt></li>"}p+="</ul>";a.html(p)}else{a.html('<div class="nothing">\u8be5\u5730\u533a\u6682\u65e0<em>QQ</em>\u7fa4\u52a0\u76df\uff0c'+$saitName+"\u8bda\u9080\u60a8\u52a0\u76df\uff0c\u8be6\u60c5\u8bf7\u54a8\u8be2\u5728\u7ebf\u5ba2\u670d\uff01</em></div>")}}};var q=function(p,o){e=Math.floor(o/g);if(e>1){c.isCount=0}d()};d()};k();j.init()});
