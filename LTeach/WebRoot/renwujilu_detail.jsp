<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>
<html>
  <head>
    <title>任务记录详细</title>
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
-->
</style>

  </head>

  <body >

  任务记录详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#CBD8AC" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>编号：</td><td width='39%'>${renwujilu.bianhao}</td>     <td width='11%'>学科：</td><td width='39%'>${renwujilu.xueke}</td></tr><tr>     <td width='11%'>年级：</td><td width='39%'>${renwujilu.nianji}</td>     <td width='11%'>学生：</td><td width='39%'>${renwujilu.xuesheng}</td></tr><tr>     <td width='11%'>时间：</td><td width='39%'>${renwujilu.shijian}</td>     <td width='11%'>时长：</td><td width='39%'>${renwujilu.shichang}</td></tr><tr>     <td width='11%'>地址：</td><td width='39%'>${renwujilu.dizhi}</td>     <td width='11%'>电话：</td><td width='39%'>${renwujilu.dianhua}</td></tr><tr>     <td width='11%'>报酬：</td><td width='39%'>${renwujilu.baochou}</td>     <td width='11%'>备注：</td><td width='39%'>${renwujilu.beizhu}</td></tr><tr>     <td width='11%'>教师：</td><td width='39%'>${renwujilu.jiaoshi}</td>     <td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>

