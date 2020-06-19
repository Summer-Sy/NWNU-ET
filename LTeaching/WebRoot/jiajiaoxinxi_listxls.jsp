<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<jsp:useBean id="jiajiaoxinxihsgb" scope="page" class="com.bean.JiajiaoxinxiBean" /> 

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=jiajiaoxinxi.xls");
%>
<html>
  <head>
    <title>家教信息</title>
  </head>

  <body >
 <%
			String sql="select * from jiajiaoxinxi  order by id desc";

			
			%>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td align='center'>标题</td>    <td align='center'>学科</td>    <td align='center'>适合年级</td>    <td align='center'>上课时间</td>    <td align='center'>联系方式</td>        <td align='center'>发布人</td>    <td  width='80' align='center'>是否审核</td>
	
    <td width="120" align="center" bgcolor="CCFFFF">添加时间</td>
    
  </tr>
   <%		
				List pagelist3=jiajiaoxinxihsgb.getAllJiajiaoxinxi(10);
			if(!pagelist3.isEmpty()){
				for(int i=0;i<pagelist3.size();i++){
					List pagelist2 =(ArrayList)pagelist3.get(i);
			%>
  <tr>
    <td  align="center"><%=i+1 %></td>
    <td>${u.biaoti}</td>    <td>${u.xueke}</td>    <td>${u.shihenianji}</td>    <td>${u.shangkeshijian}</td>    <td>${u.lianxifangshi}</td>        <td>${u.faburen}</td>    <td align='center'>${u.issh} <input type="button" value="审核" onclick="javascript:location.href='sh.jsp?id=${u.id}&yuan=${u.issh}&tablename=jiajiaoxinxi'"/></td>
	
	
   
  </tr>
  	<%
  }}
   %>
   
</table>
<br>
  </body>
</html>

