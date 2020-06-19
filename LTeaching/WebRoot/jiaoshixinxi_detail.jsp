<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>
<html>
  <head>
    <title>教师信息详细</title>
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
-->
</style>

  </head>

  <body >

  教师信息详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#CBD8AC" style="border-collapse:collapse">  
   <tr>
     <td width='11%' height=44>用户名：</td><td width='39%'>${jiaoshixinxi.yonghuming}</td><td  rowspan=8 align=center><a href=${jiaoshixinxi.touxiang} target=_blank><img src=${jiaoshixinxi.touxiang} width=228 height=215 border=0></a></td></tr><tr><td width='11%' height=44>密码：</td><td width='39%'>${jiaoshixinxi.mima}</td></tr><tr><td width='11%' height=44>姓名：</td><td width='39%'>${jiaoshixinxi.xingming}</td></tr><tr><td width='11%' height=44>性别：</td><td width='39%'>${jiaoshixinxi.xingbie}</td></tr><tr><td width='11%' height=44>专业：</td><td width='39%'>${jiaoshixinxi.zhuanye}</td></tr><tr><td width='11%' height=44>电话：</td><td width='39%'>${jiaoshixinxi.dianhua}</td></tr><tr><td width='11%' height=44>邮箱：</td><td width='39%'>${jiaoshixinxi.youxiang}</td></tr><tr><td width='11%' height=44>住址：</td><td width='39%'>${jiaoshixinxi.zhuzhi}</td></tr><tr><td width='11%' height=100  >备注：</td><td width='39%' colspan=2 height=100 >${jiaoshixinxi.beizhu}</td></tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>

