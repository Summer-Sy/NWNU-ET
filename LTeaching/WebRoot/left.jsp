<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<html>
<head>
<title>left</title><script src="js/menu.js"></script>


<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
body {
	background-color: #fbf6f2;
	
}
.STYLE2 {color: #FFFFFF}
.STYLE3 {color: #6d1d0a}
</style><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table id="__01" width="184" border="0" cellpadding="0" cellspacing="0">
	
	<tr>
		<td ><table width="184"  border="0" cellpadding="0" cellspacing="0"  id="__01">
		
		 <tr>
            <td>
              <table id="__01" width="184" border="0" cellpadding="0" cellspacing="0">
               
                <tr>
                  <td width="184" background="images/hsg8.gif"    id="submenu7"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td height="119" colspan="2" align="center"><table width="91%" height="81" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                              <td height="22" align="center"><img src="images/siteico.gif" width="16" height="16"></td>
                              <td >系统作者：xxxxxx</td>
                            </tr>
                            <tr>
                              <td width="36" height="22" align="center"><img src="images/hsg6.gif"></td>
                              <td ><p>指导老师：xxxxx<a href="yhzhgl.jsp" target="mainFrame"></a></p>
                                </td>
                            </tr>
                            <tr>
                              <td width="36" height="22" align="center"><img src="images/hsg7.gif"></td>
                              <td >所在学校：xxxxx</td>
                            </tr>
                          </table>
                        </td>
                      </tr>
                      
                  </table></td>
                </tr>
              
              </table></td>
          </tr>
		  
		  
          <tr>
            <td><table id="__01" width="184" border="0" cellpadding="0" cellspacing="0">
              <tr onClick="show('1')" style="cursor:pointer;">
                <td width="184"  background="images/hsg4.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                   <tr>
                      <td width="14%"  height="25" align="center" valign="bottom">&nbsp;</td>
                      <td width="86%" height="25"><span class="STYLE3"><strong>系统用户管理</strong></span></td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td width="184"  style="display:none"  id="show1">
				<table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
					 <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
					  <td ><a href="allusers_add.jsp" target="mainFrame">管理员添加</a></td>
					</tr>
					<tr>
					 <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
					  <td ><a href="allusersList.do" target="mainFrame">管理员管理</a></td>
					</tr>
					<%-- <tr>
					 <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
					  <td ><a href="yonghuzhuce_add.jsp" target="mainFrame">注册会员添加</a></td>
					</tr>
					<tr>
					 <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
					  <td ><a href="yonghuzhuceList.do" target="mainFrame">注册会员管理</a></td>
					</tr>
					
					
					
					<tr>
					 <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
					  <td ><a href="mod.jsp" target="mainFrame">个人密码管理</a></td> 
					</tr>--%>
				  </table>
				 </td>
              </tr>
              
            </table></td>
          </tr>
          <tr>
            <td><table id="__01" width="184" border="0" cellpadding="0" cellspacing="0">
              <tr onClick="show('2')" style="cursor:pointer;">
                <td width="184" background="images/hsg4.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="14%"  height="26" align="center" valign="bottom">&nbsp;</td>
                      <td width="86%"><span class="STYLE3"><strong>新闻公告管理</strong></span></td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td width="184"  style="display:none"  id="show2"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
                      <td ><a href="xinwentongzhi_add.jsp?lb=站内新闻" target="mainFrame">站内新闻添加</a></td>
                    </tr>
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
                      <td ><a href="xinwentongzhiList.do?lb=站内新闻" target="mainFrame">站内新闻查询</a></td>
                    </tr>
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
                      <td ><a href="xinwentongzhi_add.jsp?lb=通知公告" target="mainFrame">通知公告添加</a></td>
                    </tr>
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
                      <td ><a href="xinwentongzhiList.do?lb=通知公告" target="mainFrame">通知公告查询</a></td>
                    </tr>
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
                      <td ><a href="xinwentongzhi_add.jsp?lb=用户需知" target="mainFrame">用户需知添加</a></td>
                    </tr>
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
                      <td ><a href="xinwentongzhiList.do?lb=用户需知" target="mainFrame">用户需知查询</a></td>
                    </tr>
                </table></td>
              </tr>
             
            </table></td>
          </tr>
          <%-- <tr>
            <td><table id="__01" width="184" border="0" cellpadding="0" cellspacing="0">
              <tr onClick="show('3')" style="cursor:pointer;">
                <td width="184" background="images/hsg4.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="14%"  height="26" align="center" valign="bottom">&nbsp;</td>
                      <td width="86%"><span class="STYLE3"><strong>商品类别管理</strong></span></td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td width="184"   style="display:none"  id="show3"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
                      <td ><a href="shangpinleibie_add.jsp" target="mainFrame">商品类别添加</a></td>
                    </tr>
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
                      <td ><a href="shangpinleibieList.do" target="mainFrame">商品类别查询</a></td>
                    </tr>
                </table></td>
              </tr>
            
            </table></td>
          </tr> --%>
          <tr>
            <td><table id="__01" width="184" border="0" cellpadding="0" cellspacing="0">
              <tr onClick="show('4')" style="cursor:pointer;">
                <td width="184" background="images/hsg4.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="14%"  height="26" align="center" valign="bottom">&nbsp;</td>
                      <td width="86%"><span class="STYLE3"><strong>教师信息管理</strong></span></td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td width="184"   style="display:none"  id="show4"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
                      <td ><a href="jiaoshixinxi_add.jsp" target="mainFrame">教师信息添加</a></td>
                    </tr>
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
                      <td ><a href="jiaoshixinxiList.do" target="mainFrame">教师信息查询</a></td>
                    </tr>
					 
                </table></td>
              </tr>
             
            </table></td>
          </tr>
          <tr>
            <td><table id="__01" width="184" border="0" cellpadding="0" cellspacing="0">
              <tr onClick="show('5')" style="cursor:pointer;">
                <td width="184" background="images/hsg4.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="14%"  height="26" align="center" valign="bottom">&nbsp;</td>
                      <td width="86%"><span class="STYLE3"><strong>家教信息管理</strong></span></td>
                    </tr>
                </table></td>
              </tr>

              <tr>
                <td width="184"   style="display:none"  id="show5"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
                      <td ><a href="jiajiaoxinxi_add.jsp" target="mainFrame">家教信息添加</a></td>
                    </tr>
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
                      <td ><a href="jiajiaoxinxiList.do" target="mainFrame">家教信息查询</a></td>
                    </tr>
                </table></td>
              </tr>
             
            </table>
			</td>
          </tr>
          <tr>
            <td>
              <table id="__01" width="184" border="0" cellpadding="0" cellspacing="0">
                <tr onClick="show('6')" style="cursor:pointer;">
                  <td width="184" background="images/hsg4.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                      <td width="14%"  height="26" align="center" valign="bottom">&nbsp;</td>
                      <td width="86%"><span class="STYLE3"><strong>学生信息管理</strong></span></td>
                    </tr>
                  </table></td>
                </tr>
                <tr>
                  <td width="184"   style="display:none"  id="show6"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
                        <td ><a href="xueshengxinxi_add.jsp" target="mainFrame">学生信息添加</a></td>
                      </tr>
                      <tr>
                        <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
                        <td ><a href="xueshengxinxiList.do" target="mainFrame">学生信息查询</a></td>
                      </tr>
					 
                  </table></td>
                </tr>
               
              </table>
			  </td>
          </tr>
		  
		  <tr>
            <td>
              <table id="__01" width="184" border="0" cellpadding="0" cellspacing="0">
                <tr onClick="show('7')" style="cursor:pointer;">
                  <td width="184" background="images/hsg4.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                      <td width="14%"  height="26" align="center" valign="bottom">&nbsp;</td>
                      <td width="86%"><span class="STYLE3"><strong>家教任务管理</strong></span></td>
                    </tr>
                  </table></td>
                </tr>
                <tr>
                  <td width="184"   style="display:none"  id="show7"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
                        <td ><a href="jiajiaorenwuList.do" target="mainFrame">家教任务管理</a></td>
                      </tr>
                      <tr>
                        <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
                        <td ><a href="renwujiluList.do" target="mainFrame">任务记录管理</a></td>
                      </tr>
                     
                  </table></td>
                </tr>
               
              </table>
			  </td>
          </tr>
		  
          <tr>
            <td>
              <table id="__01" width="184" border="0" cellpadding="0" cellspacing="0">
                <tr onClick="show('17')" style="cursor:pointer;">
                  <td width="184" background="images/hsg4.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                      <td width="14%"  height="26" align="center" valign="bottom">&nbsp;</td>
                      <td width="86%"><span class="STYLE3"><strong>系统管理</strong></span></td>
                    </tr>
                  </table></td>
                </tr>
                <tr>
                  <td width="184"    id="show17"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                      
					  <tr>
                        <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
                        <td ><a href="youqinglianjie_add.jsp" target="mainFrame">友情连接添加</a></td>
                      </tr>
                      <tr>
                        <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
                        <td ><a href="youqinglianjieList.do" target="mainFrame">友情连接查询</a></td>
                      </tr>
					  <tr>
                        <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
                        <td ><a href="liuyanbanList.do" target="mainFrame">留言管理</a></td>
                      </tr>
                      <tr>
                        <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
                        <td ><a href="dx.jsp?lb=系统简介" target="mainFrame">系统简介设置</a></td>
                      </tr>
					  <tr>
                        <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
                        <td ><a href="dx.jsp?lb=系统公告" target="mainFrame">系统公告设置</a></td>
                      </tr>
                    
                  </table></td>
                </tr>
               
              </table>
			  </td>
          </tr>
         <!-- <tr>
            <td>
              <table id="__01" width="184" border="0" cellpadding="0" cellspacing="0">
                <tr >
                  <td width="184" background="images/hsg4.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="90%"  height="26" align="center" valign="bottom"><span class="STYLE3"><strong>系统版权</strong></span></td>
                        <td width="10%">&nbsp;</td>
                      </tr>
                  </table></td>
                </tr>
                <tr>
                  <td width="184"    id="submenu7"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td colspan="2" align="center"><p>&nbsp;</p>
                        </td>
                      </tr>
                      
                  </table></td>
                </tr>
              
              </table></td>
          </tr>-->
        </table></td>
	</tr>
	
</table>
</body>
</html>