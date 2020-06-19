<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>


<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
<script type="text/javascript" src="js/popup.js"></script>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<TITLE>修改家教任务</TITLE>
	    
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
-->
</style>
       
	</head>
<%
  String id="";
 
   %>
<script language="javascript">

function gows()
{
	document.location.href="jiajiaorenwu_add.jsp?id=<%=id%>";
}
function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"；", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"；";
	}
}
</script>
	<body>
			<form action="updateJiajiaorenwu.do" name="form1" method="post">
				      <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1"  style="border-collapse:collapse" bgcolor="#F2FDFF">
						<tr bgcolor="#E7E7E7">
							<td height="20" colspan="2" background="images/table_header.gif">修改家教任务<input type="hidden" name="id" value="${jiajiaorenwu.id}" /></td>
						</tr>
						<tr ><td width="200">编号：</td><td><input name='bianhao' type='text' id='bianhao' value='<%=connDbBean.getID()%>' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr ><td width="200">学科：</td><td><input name='xueke' type='text' id='xueke' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelxueke' /></td></tr>		<tr ><td width="200">年级：</td><td><input name='nianji' type='text' id='nianji' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelnianji' /></td></tr><script language="javascript">document.form1.nianji.value='<%=connDbBean.readzd("xueshengxinxi","nianji","xuesheng",(String)request.getSession().getAttribute("username"))%>';document.form1.nianji.setAttribute("readOnly",'true');</script>		<tr ><td width="200">时间：</td><td><input name='shijian' type='text' id='shijian' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr ><td width="200">时长：</td><td><input name='shichang' type='text' id='shichang' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr ><td width="200">地址：</td><td><input name='dizhi' type='text' id='dizhi' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr><script language="javascript">document.form1.dizhi.value='<%=connDbBean.readzd("xueshengxinxi","dizhi","xuesheng",(String)request.getSession().getAttribute("username"))%>';document.form1.dizhi.setAttribute("readOnly",'true');</script>		<tr ><td width="200">电话：</td><td><input name='dianhua' type='text' id='dianhua' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr><script language="javascript">document.form1.dianhua.value='<%=connDbBean.readzd("xueshengxinxi","dianhua","xuesheng",(String)request.getSession().getAttribute("username"))%>';document.form1.dianhua.setAttribute("readOnly",'true');</script>		<tr ><td width="200">报酬：</td><td><input name='baochou' type='text' id='baochou' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr ><td width="200">简介：</td><td><textarea name='jianjie' cols='50' rows='5' id='jianjie' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>		<tr 0><td width="200">学生：</td><td><input name='xuesheng' type='text' id='xuesheng' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=(String)request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>		
		
						<tr align='center'   height="22">
						    <td width="25%"  align="right">&nbsp;
						        
						    </td>
						    <td width="75%"  align="left">
						       <input type="submit" name="querenzhuce" id="querenzhuce" value="提交" onClick="return checkform();"/>
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
						<script language="javascript">document.form1.bianhao.value='${jiajiaorenwu.bianhao}';</script>	<script language="javascript">document.form1.xueke.value='${jiajiaorenwu.xueke}';</script>	<script language="javascript">document.form1.nianji.value='${jiajiaorenwu.nianji}';</script>	<script language="javascript">document.form1.shijian.value='${jiajiaorenwu.shijian}';</script>	<script language="javascript">document.form1.shichang.value='${jiajiaorenwu.shichang}';</script>	<script language="javascript">document.form1.dizhi.value='${jiajiaorenwu.dizhi}';</script>	<script language="javascript">document.form1.dianhua.value='${jiajiaorenwu.dianhua}';</script>	<script language="javascript">document.form1.baochou.value='${jiajiaorenwu.baochou}';</script>	<script language="javascript">document.form1.jianjie.value='${jiajiaorenwu.jianjie}';</script>	<script language="javascript">document.form1.xuesheng.value='${jiajiaorenwu.xuesheng}';</script>	
					 </table>
			</form>
   </body>
</html>






<script language=javascript >  
 
 function checkform(){  
 
	var xuekeobj = document.getElementById("xueke"); if(xuekeobj.value==""){document.getElementById("clabelxueke").innerHTML="&nbsp;&nbsp;<font color=red>请输入学科</font>";return false;}else{document.getElementById("clabelxueke").innerHTML="  "; } 	var nianjiobj = document.getElementById("nianji"); if(nianjiobj.value==""){document.getElementById("clabelnianji").innerHTML="&nbsp;&nbsp;<font color=red>请输入年级</font>";return false;}else{document.getElementById("clabelnianji").innerHTML="  "; } 	


return true;   
}   
popheight=450;
</script>  
