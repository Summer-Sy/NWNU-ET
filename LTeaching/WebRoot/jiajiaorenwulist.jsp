<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>

<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
<script type="text/javascript" src="js/popup.js"></script>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>


<html>
<head>
<title>家教任务</title>

<LINK href="qtimages/style.css" type=text/css rel=stylesheet>
</head>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>

<%

%>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="950" height="1043" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
	<tr>
		<td><jsp:include page="qttop.jsp"></jsp:include></td>
	</tr>
	<tr>
		<td><table id="__01" width="950" height="735" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td valign="top" background="qtimages/1_02_01_06.gif"><jsp:include page="qtleft.jsp"></jsp:include></td>
            <td valign="top" style="background:url(qtimages/1_02_02_01_02_02_03.gif) repeat-y  right center; "><table id="__01" width="744" height="700" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="744" height="37" background="qtimages/1_02_02_02_01.gif"><table width="100%" height="17" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="21%" align="center" valign="middle"><strong>家教任务</strong></td>
                        <td width="79%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="744" height="700" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="11" background="qtimages/1_02_02_02_02_01.gif">&nbsp;</td>
                        <td width="712" height="169" valign="top" bgcolor="#F0F4F7">
						
						
<form action="jjrwList.do" name="myform" method="post">
									查询   学科：<input name="xueke" type="text" id="xueke" style='border:solid 1px #000000; color:#666666' size="12" />  年级：<input name="nianji" type="text" id="nianji" style='border:solid 1px #000000; color:#666666' size="12" />  时间：<input name="shijian" type="text" id="shijian" style='border:solid 1px #000000; color:#666666' size="12" />  地址：<input name="dizhi" type="text" id="dizhi" style='border:solid 1px #000000; color:#666666' size="12" />
									<input type="submit" value="查询" /> 
								</form>	

	
<br />
<table width="100%" border="0" align="center" cellpadding="4" cellspacing="1" bgcolor="#ebf0f7">
                          <tr>
                            <td align="center" bgcolor="#ebf0f7" width="30px">序号</td>
                            <%-- <td bgcolor='#ebf0f7'>编号</td> --%>
    <td bgcolor='#ebf0f7'>学科</td>
    <td bgcolor='#ebf0f7'>年级</td>
    <td bgcolor='#ebf0f7'>时间</td>
    <td bgcolor='#ebf0f7'>时长</td>
    <%-- <td bgcolor='#ebf0f7'>地址</td>
    <td bgcolor='#ebf0f7'>电话</td> --%>
    <td bgcolor='#ebf0f7'>报酬</td>
    
    <td bgcolor='#ebf0f7'>学生</td>
    
                            <%-- <td align="center" bgcolor="#ebf0f7" width="150px"> 添加时间 </td> --%>
                            <td align="center" bgcolor="#ebf0f7" width="50px"> 操作 </td>
                          </tr>
                          <%
					int i=0;
				%>
                          <c:forEach items="${list}" var="u">
                            <%
					i++;
				%>
                            <tr align="center" bgcolor="#FFFFFF">
                              <td align="center"><%=i%></td>
                             <%-- <td>${u.bianhao}</td> --%>
    <td>${u.xueke}</td>
    <td>${u.nianji}</td>
    <td>${u.shijian}</td>
    <td>${u.shichang}</td>
    <%-- <td>${u.dizhi}</td> --%>
    <%-- <td>${u.dianhua}</td> --%>
    <td>${u.baochou}</td>
    
    <td>${u.xuesheng}</td>
    
                              <%-- <td align="center"> ${u.addtime} </td> --%>
                              <td align="center"><a href="jjrwDetail.do?id=${u.id}">详细</a></td>
                            </tr>
                          </c:forEach>
                        </table>
<br>

<p align="center"> <c:if test="${sessionScope.p==1 }">
		 <c:if test="${page.page>1}">
              <a href="jjrwList.do?page=1" >首页</a>
             <a href="jjrwList.do?page=${page.page-1 }"> 上一页</a>             </c:if>
    	     <c:if test="${page.page<page.totalPage}">
			<a href="jjrwList.do?page=${page.page+1 }">下一页</a>
			<a href="jjrwList.do?page=${page.totalPage }">末页</a>		    </c:if>		
	</c:if>
	</p>




						
						</td>
                        <td width="21" background="qtimages/1_02_02_02_02_03.gif">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><img src="qtimages/1_02_02_02_03.gif" width="744" height="8" alt=""></td>
                  </tr>
                </table></td>
          </tr>
        </table></td>
	</tr>
	<tr>
		<td>
		<jsp:include page="qtdown.jsp"></jsp:include>
		</td>
	</tr>
</table>

</body>
</html>
