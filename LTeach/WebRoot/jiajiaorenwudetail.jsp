﻿<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
<script language=javascript src='js/popup.js'></script>
<script language=javascript> 
function hsgpinglun(nbiao,nid){ 
popheight=450;
pop('hsgpinglun.jsp?biao='+nbiao+'&id='+nid,'在线评论',550,250) ;
}
</script> 
<%
	String id=request.getParameter("id");
	
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
						
						
   <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
      <tr>
		 <td width='11%'>编号：</td><td width='39%'>${jiajiaorenwu.bianhao}</td>     <td width='11%'>学科：</td><td width='39%'>${jiajiaorenwu.xueke}</td></tr><tr>     <td width='11%'>年级：</td><td width='39%'>${jiajiaorenwu.nianji}</td>     <td width='11%'>时间：</td><td width='39%'>${jiajiaorenwu.shijian}</td></tr><tr>     <td width='11%'>时长：</td><td width='39%'>${jiajiaorenwu.shichang}</td>     <td width='11%'>地址：</td><td width='39%'>${jiajiaorenwu.dizhi}</td></tr><tr>     <td width='11%'>电话：</td><td width='39%'>${jiajiaorenwu.dianhua}</td>     <td width='11%'>报酬：</td><td width='39%'>${jiajiaorenwu.baochou}</td></tr><tr>     <td width='11%'>简介：</td><td width='39%'>${jiajiaorenwu.jianjie}</td>     <td width='11%'>学生：</td><td width='39%'>${jiajiaorenwu.xuesheng}</td>     </tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" /><input type=button name=Submit52 value=打印 onClick="javascript:window.print()"  /> <input type="button" name="jiajiaorenwurenwu" value="任务" onclick="javascript:location.href='renwujiluadd.jsp?id=${jiajiaorenwu.id}';"> <!--jixaaxnnxiu--></td></tr>
    
  </table>
						
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
