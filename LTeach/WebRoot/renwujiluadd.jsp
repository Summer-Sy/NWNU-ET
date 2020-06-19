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
<title>任务记录</title>

<LINK href="qtimages/style.css" type=text/css rel=stylesheet>
</head>
<%
if(request.getSession().getAttribute("username")==null)
{
	out.print("<script>alert('对不起,请您先登陆!');location.href='index.do';</script>");
	return;
}
  String id="";


 



   %>


	
	<script language="javascript">
function checkform()
{
	
}
function gow()
{
	document.location.href="renwujiluadd.jsp?id=<%=id%>";
}
</script>


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
                        <td width="21%" align="center" valign="middle"><strong>任务记录</strong></td>
                        <td width="79%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="744" height="700" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="11" background="qtimages/1_02_02_02_02_01.gif">&nbsp;</td>
                        <td width="712" height="169" valign="top" bgcolor="#F0F4F7">
						
						<% 




%>

  
<form action="addRenwujilu.do" name="form1" method="post">
				      <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#CCCCCC" style="border-collapse:collapse" class="newsline">
						
						<tr ><td width="200">编号：</td><td><input name='bianhao' type='text' id='bianhao' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.bianhao.value='<%=connDbBean.readzd("jiajiaorenwu","bianhao","id",request.getParameter("id"))%>';document.form1.bianhao.setAttribute("readOnly",'true');</script>		<tr ><td width="200">学科：</td><td><input name='xueke' type='text' id='xueke' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.xueke.value='<%=connDbBean.readzd("jiajiaorenwu","xueke","id",request.getParameter("id"))%>';document.form1.xueke.setAttribute("readOnly",'true');</script>		<tr ><td width="200">年级：</td><td><input name='nianji' type='text' id='nianji' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.nianji.value='<%=connDbBean.readzd("jiajiaorenwu","nianji","id",request.getParameter("id"))%>';document.form1.nianji.setAttribute("readOnly",'true');</script>		<tr ><td width="200">学生：</td><td><input name='xuesheng' type='text' id='xuesheng' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.xuesheng.value='<%=connDbBean.readzd("jiajiaorenwu","xuesheng","id",request.getParameter("id"))%>';document.form1.xuesheng.setAttribute("readOnly",'true');</script>		<tr ><td width="200">时间：</td><td><input name='shijian' type='text' id='shijian' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.shijian.value='<%=connDbBean.readzd("jiajiaorenwu","shijian","id",request.getParameter("id"))%>';document.form1.shijian.setAttribute("readOnly",'true');</script>		<tr ><td width="200">时长：</td><td><input name='shichang' type='text' id='shichang' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.shichang.value='<%=connDbBean.readzd("jiajiaorenwu","shichang","id",request.getParameter("id"))%>';document.form1.shichang.setAttribute("readOnly",'true');</script>		<tr ><td width="200">地址：</td><td><input name='dizhi' type='text' id='dizhi' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.dizhi.value='<%=connDbBean.readzd("jiajiaorenwu","dizhi","id",request.getParameter("id"))%>';document.form1.dizhi.setAttribute("readOnly",'true');</script>		<tr ><td width="200">电话：</td><td><input name='dianhua' type='text' id='dianhua' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.dianhua.value='<%=connDbBean.readzd("jiajiaorenwu","dianhua","id",request.getParameter("id"))%>';document.form1.dianhua.setAttribute("readOnly",'true');</script>		<tr ><td width="200">报酬：</td><td><input name='baochou' type='text' id='baochou' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.baochou.value='<%=connDbBean.readzd("jiajiaorenwu","baochou","id",request.getParameter("id"))%>';document.form1.baochou.setAttribute("readOnly",'true');</script>		<tr 0><td width="200">备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>		<tr 1><td width="200">教师：</td><td><input name='jiaoshi' type='text' id='jiaoshi' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=(String)request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>		
		
						<tr align='center'   height="22">
						    <td width="25%"  align="right">&nbsp;
						        
						    </td>
						    <td width="75%"  align="left">
						      <input type="submit" name="querenzhuce" id="querenzhuce" value="提交" onClick="return checkform();"/>
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
					 </table>
			</form>
			<script language="javascript">popheight = 450;</script>
						
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
