<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>
<html>
  <head>
    <title>家教任务详细</title>
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
-->
</style>

  </head>

  <body >

  家教任务详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#CBD8AC" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>编号：</td><td width='39%'>${jiajiaorenwu.bianhao}</td>     <td width='11%'>学科：</td><td width='39%'>${jiajiaorenwu.xueke}</td></tr><tr>     <td width='11%'>年级：</td><td width='39%'>${jiajiaorenwu.nianji}</td>     <td width='11%'>时间：</td><td width='39%'>${jiajiaorenwu.shijian}</td></tr><tr>     <td width='11%'>时长：</td><td width='39%'>${jiajiaorenwu.shichang}</td>     <td width='11%'>地址：</td><td width='39%'>${jiajiaorenwu.dizhi}</td></tr><tr>     <td width='11%'>电话：</td><td width='39%'>${jiajiaorenwu.dianhua}</td>     <td width='11%'>报酬：</td><td width='39%'>${jiajiaorenwu.baochou}</td></tr><tr>     <td width='11%'>简介：</td><td width='39%'>${jiajiaorenwu.jianjie}</td>     <td width='11%'>学生：</td><td width='39%'>${jiajiaorenwu.xuesheng}</td>     </tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>

