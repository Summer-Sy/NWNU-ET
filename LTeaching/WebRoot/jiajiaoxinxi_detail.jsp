﻿<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>
<html>
  <head>
    <title>家教信息详细</title>
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
-->
</style>

  </head>

  <body >

  家教信息详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#CBD8AC" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>标题：</td><td width='39%'>${jiajiaoxinxi.biaoti}</td>     <td width='11%'>学科：</td><td width='39%'>${jiajiaoxinxi.xueke}</td></tr><tr>     <td width='11%'>适合年级：</td><td width='39%'>${jiajiaoxinxi.shihenianji}</td>     <td width='11%'>上课时间：</td><td width='39%'>${jiajiaoxinxi.shangkeshijian}</td></tr><tr>     <td width='11%'>联系方式：</td><td width='39%'>${jiajiaoxinxi.lianxifangshi}</td>     <td width='11%'>简介：</td><td width='39%'>${jiajiaoxinxi.jianjie}</td></tr><tr>     <td width='11%'>发布人：</td><td width='39%'>${jiajiaoxinxi.faburen}</td>     <td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>

