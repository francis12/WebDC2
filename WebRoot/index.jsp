<%@ page language="java" import="java.util.*" import="java.text.SimpleDateFormat" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>数据中心</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/base.js"></script>
	<script type="text/javascript">
	var baseServlet = "dcservlet.do?opcode="
	function doServlet(type)
	{
		ajaxUrl(baseServlet+type,'servletResp');
		alert("任务正在执行，请稍等片刻...");
	}
	function servletResp(XMLHTTP)
	{
		var result = XMLHTTP.responseText;
		if(result == undefined || result == "" || result == "false")
		{
			alert("手动传输失败");
		}else if(result == "true")
		{
			alert("手动传输成功");
		}
	}

	function changeClock()
	{
    	var d = new Date();
    	//document.getElementById("clock").innerHTML = d.getFullYear() + "-" + (d.getMonth() + 1) + "-" + d.getDate() + " " + d.getHours() + ":" + d.getMinutes() + ":" + d.getSeconds();
		document.getElementById("tips").innerHTML =  "当前时间为：" + d.getFullYear() + "-" + (d.getMonth() + 1) + "-" + d.getDate() + " " + d.getHours() + ":" + d.getMinutes() + ":" + d.getSeconds()
													+ ",重传的将是" + d.getFullYear() + "-" + (d.getMonth() + 1) + "-" + (d.getDate() - 1) + "文件";
	}

	window.setInterval(changeClock, 1000);
	
	</script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <style type="text/css">
<!--

body{text-align:center;}
#singleservice {
	font-family: "新宋体";
	margin:0 20px;
	float:left;
}
-->
    </style>
</head>
  
  <body>
  	 <div id="tips">
  	 </div><br>
	  <div id="allservice">
	  	<input name="button" type="button" onClick="doServlet('0')" value="一键同步所有数据">
	  </div>
 	  <div class="service" id="singleservice">
		<input type="button" onClick="doServlet('1')" value="1.业务接口"><br>
		<input type="button" onClick="doServlet('2')" value="2.业务和栏目映射关系接口"><br>
		<input type="button" onClick="doServlet('3')" value="3.频道接口"><br>
		<input type="button" onClick="doServlet('4')" value="4.CPSP接口"><br>
		<input type="button" onClick="doServlet('5')" value="5.机顶盒登陆接口"><br>
		<input type="button" onClick="doServlet('6')" value="6.媒资分类接口"><br>
		<input type="button" onClick="doServlet('7')" value="7.媒资接口"><br>
		<input type="button" onClick="doServlet('8')" value="8.栏目信息接口"><br>
		<input type="button" onClick="doServlet('9')" value="9.点播记录接口"><br>
		<input type="button" onClick="doServlet('10')" value="10.产品接口"><br>
		<input type="button" onClick="doServlet('11')" value="11.业务与资源关系接口"><br>
		<input type="button" onClick="doServlet('12')" value="12.业务跳转记录接口"><br>
		<input type="button" onClick="doServlet('13')" value="13.订购关系接口"><br>
		<input type="button" onClick="doServlet('14')" value="14.用户彩屏接口"><br>
		<input type="button" onClick="doServlet('15')" value="15.用户群组接口">
  	 </div>
  </body>
</html>
