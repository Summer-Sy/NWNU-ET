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
		<TITLE>修改家教信息</TITLE>
	    
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
	document.location.href="jiajiaoxinxi_add.jsp?id=<%=id%>";
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
			<form action="updateJiajiaoxinxi.do" name="form1" method="post">
				      <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1"  style="border-collapse:collapse" bgcolor="#F2FDFF">
						<tr bgcolor="#E7E7E7">
							<td height="20" colspan="2" background="images/table_header.gif">修改家教信息<input type="hidden" name="id" value="${jiajiaoxinxi.id}" /></td>
						</tr>
						<tr ><td width="200">标题：</td><td><input name='biaoti' type='text' id='biaoti' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelbiaoti' /></td></tr>		<tr ><td width="200">学科：</td><td><input name='xueke' type='text' id='xueke' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelxueke' /></td></tr>		<tr ><td width="200">适合年级：</td><td><input name='shihenianji' type='text' id='shihenianji' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelshihenianji' /></td></tr>		<tr ><td width="200">上课时间：</td><td><input name='shangkeshijian' type='text' id='shangkeshijian' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr ><td width="200">联系方式：</td><td><input name='lianxifangshi' type='text' id='lianxifangshi' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr ><td width="200">简介：</td><td><textarea name='jianjie' cols='50' rows='5' id='jianjie' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>		<tr ><td width="200">发布人：</td><td><input name='faburen' type='text' id='faburen' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		
		
						<tr align='center'   height="22">
						    <td width="25%"  align="right">&nbsp;
						        
						    </td>
						    <td width="75%"  align="left">
						       <input type="submit" name="querenzhuce" id="querenzhuce" value="提交" onClick="return checkform();"/>
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
						<script language="javascript">document.form1.biaoti.value='${jiajiaoxinxi.biaoti}';</script>	<script language="javascript">document.form1.xueke.value='${jiajiaoxinxi.xueke}';</script>	<script language="javascript">document.form1.shihenianji.value='${jiajiaoxinxi.shihenianji}';</script>	<script language="javascript">document.form1.shangkeshijian.value='${jiajiaoxinxi.shangkeshijian}';</script>	<script language="javascript">document.form1.lianxifangshi.value='${jiajiaoxinxi.lianxifangshi}';</script>	<script language="javascript">document.form1.jianjie.value='${jiajiaoxinxi.jianjie}';</script>	<script language="javascript">document.form1.faburen.value='${jiajiaoxinxi.faburen}';</script>	
					 </table>
			</form>
   </body>
</html>






<script language=javascript >  
 
 function checkform(){  
 
	var biaotiobj = document.getElementById("biaoti"); if(biaotiobj.value==""){document.getElementById("clabelbiaoti").innerHTML="&nbsp;&nbsp;<font color=red>请输入标题</font>";return false;}else{document.getElementById("clabelbiaoti").innerHTML="  "; } 	var xuekeobj = document.getElementById("xueke"); if(xuekeobj.value==""){document.getElementById("clabelxueke").innerHTML="&nbsp;&nbsp;<font color=red>请输入学科</font>";return false;}else{document.getElementById("clabelxueke").innerHTML="  "; } 	var shihenianjiobj = document.getElementById("shihenianji"); if(shihenianjiobj.value==""){document.getElementById("clabelshihenianji").innerHTML="&nbsp;&nbsp;<font color=red>请输入适合年级</font>";return false;}else{document.getElementById("clabelshihenianji").innerHTML="  "; } 	


return true;   
}   
popheight=450;
</script>  
