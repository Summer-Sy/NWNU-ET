<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<jsp:useBean id="renwujiluhsgb" scope="page" class="com.bean.RenwujiluBean" /> 

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=renwujilu.xls");
%>
<html>
  <head>
    <title>�����¼</title>
  </head>

  <body >
 <%
			String sql="select * from renwujilu  order by id desc";

			
			%>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td align='center'>���</td>    <td align='center'>ѧ��</td>    <td align='center'>�꼶</td>    <td align='center'>ѧ��</td>    <td align='center'>ʱ��</td>    <td align='center'>ʱ��</td>    <td align='center'>��ַ</td>    <td align='center'>�绰</td>    <td align='center'>����</td>        <td align='center'>��ʦ</td>    <td  width='80' align='center'>�Ƿ����</td>
	
    <td width="120" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
  </tr>
   <%		
				List pagelist3=renwujiluhsgb.getAllRenwujilu(14);
			if(!pagelist3.isEmpty()){
				for(int i=0;i<pagelist3.size();i++){
					List pagelist2 =(ArrayList)pagelist3.get(i);
			%>
  <tr>
    <td  align="center"><%=i+1 %></td>
    <td>${u.bianhao}</td>    <td>${u.xueke}</td>    <td>${u.nianji}</td>    <td>${u.xuesheng}</td>    <td>${u.shijian}</td>    <td>${u.shichang}</td>    <td>${u.dizhi}</td>    <td>${u.dianhua}</td>    <td>${u.baochou}</td>        <td>${u.jiaoshi}</td>    <td align='center'>${u.issh} <input type="button" value="���" onclick="javascript:location.href='sh.jsp?id=${u.id}&yuan=${u.issh}&tablename=renwujilu'"/></td>
	
	
   
  </tr>
  	<%
  }}
   %>
   
</table>
<br>
  </body>
</html>

