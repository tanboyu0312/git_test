﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.Info"%>
<%@page import="util.PageManager"%>
 
 <%
HashMap user = Info.getUser(request);
String uname = user.get("uname").toString();
String utype = user.get("utype").toString();
String userid = user.get("id").toString();
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'index.jsp' starting page</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #F8F9FA;
}
-->
</style>
 
<link href="/toymsite/frontfiles/images/skin.css" rel="stylesheet" type="text/css" />
  </head>
  
  <% 
new CommDAO().delete(request,"sysuser"); 
String id = request.getParameter("id"); 
String erjitype = request.getParameter("erjitype"); 
String myztree = request.getParameter("myztree"); 
HashMap ext = new HashMap(); 
new CommDAO().update(request,response,"sysuser",ext,true,false); 
HashMap mmm = new CommDAO().getmap(id,"sysuser"); 
%>
<body>
   
  <form  action="psysuserck.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="f1"  onsubmit="return checkform();">
   <table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td class="left_txt2" width="17" height="29" valign="top" background="/toymsite/frontfiles/images/mail_leftbg.gif"><img src="/toymsite/frontfiles/images/left-top-right.gif" width="17" height="29" /></td>
    <td class="left_txt2" width="1212" height="29" valign="top" background="/toymsite/frontfiles/images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td class="left_txt2" height="31"><div class="titlebt">信息修改</div></td>
      </tr>
    </table></td>
    <td class="left_txt2" width="22" valign="top" background="/toymsite/frontfiles/images/mail_rightbg.gif"><img src="/toymsite/frontfiles/images/nav-right-bg.gif" width="16" height="29" /></td>
  </tr>
  <tr>
    <td class="left_txt2" height="71" valign="middle" background="/toymsite/frontfiles/images/mail_leftbg.gif">&nbsp;</td>
    <td class="left_txt2" valign="top" bgcolor="#F7F8F9"><table width="100%" height="92" border="0" cellpadding="0" cellspacing="0">
      
      <tr>
        <td  height="92" valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
         
          <tr>
            <td><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="nowtable">
              <tr>
                <td class="left_bt2">&nbsp;&nbsp;&nbsp;请输入相关信息</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td height="46"><table width="100%" border="0" cellspacing="0" cellpadding="0">
			    <tr>
                <td  width="18%" height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">用户名：</td>
                <td width="82%" bgcolor="#f2f2f2" class="left_txt2"><input type=text  onblur='checkform()'  class='' id='uname' name='uname' size=35 /><label id='clabeluname' />&nbsp;                </td>
                </tr>
<tr>
                <td  width="18%" height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">密码：</td>
                <td width="82%" bgcolor="#f2f2f2" class="left_txt2"><input type=text  onblur='checkform()'  class='' id='upass' name='upass' size=35 /><label id='clabelupass' />&nbsp;                </td>
                </tr>
<tr>
                <td  width="18%" height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">姓名：</td>
                <td width="82%" bgcolor="#f2f2f2" class="left_txt2"><input type=text  onblur='checkform()'  class='' id='tname' name='tname' size=35 /><label id='clabeltname' />&nbsp;                </td>
                </tr>
<tr>
                <td  width="18%" height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">性别：</td>
                <td width="82%" bgcolor="#f2f2f2" class="left_txt2"><span id="sexdanx"><label><input type=radio name='sex' value='男' />&nbsp;&nbsp;男 </label>&nbsp;
<label><input type=radio name='sex' value='女' />&nbsp;&nbsp;女 </label>&nbsp;
</span>&nbsp;                </td>
                </tr>
<tr>
                <td  width="18%" height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">生日：</td>
                <td width="82%" bgcolor="#f2f2f2" class="left_txt2"><input type=text size='12'   onblur='checkform()'  class=''   name='birth'  id='birth' onclick='WdatePicker();'  /><label id='clabelbirth' />&nbsp;                </td>
                </tr>
<tr>
                <td  width="18%" height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">联系电话：</td>
                <td width="82%" bgcolor="#f2f2f2" class="left_txt2"><input type=text  onblur='checkform()'  class='' id='tel' name='tel' size=35 /><label id='clabeltel' />&nbsp;                </td>
                </tr>
<tr>
                <td  width="18%" height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">联系地址：</td>
                <td width="82%" bgcolor="#f2f2f2" class="left_txt2"><textarea  cols='35'  onblur='checkform()'   style='margin-top: 1px;margin-bottom: 1px'  class=''   name='addrs'   ></textarea>&nbsp;                </td>
                </tr>
<tr>
                <td  width="18%" height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">联系QQ：</td>
                <td width="82%" bgcolor="#f2f2f2" class="left_txt2"><input type=text  onblur='checkform()'  class='' id='qq' name='qq' size=35 /><label id='clabelqq' />&nbsp;                </td>
                </tr>
<tr>
                <td  width="18%" height="30" align="center" bgcolor="#f2f2f2" class="left_txt2">头像：</td>
                <td width="82%" bgcolor="#f2f2f2" class="left_txt2"><%=Info.getImgUpInfo(65)%>&nbsp;                </td>
                </tr>

              

             <tr>
              <td height="31" colspan="2" align="center" valign="bottom" class="left_txt2">
              
              <input type="submit" value="提交信息" name="B1" />         
              
                &nbsp;&nbsp;&nbsp;
                
                <input type=button value='重置信息' onclick='getPvalue()' />                 </td>
              </tr>
              
              
            </table></td>
          </tr>
        </table>
		
		
		
		
		
		
		</td>
      </tr>
    </table></td>
    <td class="left_txt2" background="/toymsite/frontfiles/images/mail_rightbg.gif">&nbsp;</td>
  </tr>
  <tr>
    <td class="left_txt2" valign="middle" background="/toymsite/frontfiles/images/mail_leftbg.gif"><img src="/toymsite/frontfiles/images/buttom_left2.gif" width="17" height="17" /></td>
      <td class="left_txt2" height="17" valign="top" background="/toymsite/frontfiles/images/buttom_bgs.gif"><img src="/toymsite/frontfiles/images/buttom_bgs.gif" width="17" height="17" /></td>
    <td class="left_txt2" background="/toymsite/frontfiles/images/mail_rightbg.gif"><img src="/toymsite/frontfiles/images/buttom_right2.gif" width="16" height="17" /></td>
  </tr>
</table>
</form>
  </body>
</html>
<script language=javascript src='/toymsite/js/My97DatePicker/WdatePicker.js'></script> 
<script language=javascript src='/toymsite/js/ajax.js'></script> 
<script language=javascript src='/toymsite/js/popup.js'></script> 
<%@page import="util.Info"%> 
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
<script language=javascript >  
 
</script>  
<script language=javascript >  
 function checkform(){  
var unameobj = document.getElementById("uname");  
if(unameobj.value==""){  
document.getElementById("clabeluname").innerHTML="&nbsp;&nbsp;<font color=red>请输入用户名</font>";  
return false;  
}else{ 
document.getElementById("clabeluname").innerHTML="  ";  
}  
var unameobj = document.getElementById("uname");  
if(unameobj.value!=""){  
var ajax = new AJAX(); 
ajax.post("/toymsite/factory/checkno.jsp?table=sysuser&col=uname&value="+unameobj.value+"&checktype=update&id=<%=mmm.get("id")%>&ttime=<%=Info.getDateStr()%>"); 
var msg = ajax.getValue(); 
if(msg.indexOf('Y')>-1){ 
document.getElementById("clabeluname").innerHTML="&nbsp;&nbsp;<font color=red>用户名已存在</font>";  
return false; 
}else{ 
document.getElementById("clabeluname").innerHTML="  ";  
}  
}  
var upassobj = document.getElementById("upass");  
if(upassobj.value==""){  
document.getElementById("clabelupass").innerHTML="&nbsp;&nbsp;<font color=red>请输入密码</font>";  
return false;  
}else{ 
document.getElementById("clabelupass").innerHTML="  ";  
}  
var tnameobj = document.getElementById("tname");  
if(tnameobj.value==""){  
document.getElementById("clabeltname").innerHTML="&nbsp;&nbsp;<font color=red>请输入姓名</font>";  
return false;  
}else{ 
document.getElementById("clabeltname").innerHTML="  ";  
}  
var telobj = document.getElementById("tel");  
if(telobj.value!=""){  
if(telobj.value.length>11||telobj.value.length<8||isNaN(telobj.value)){ 
document.getElementById("clabeltel").innerHTML="&nbsp;&nbsp;<font color=red>联系电话必须为8-11位数字</font>";  
return false;
}else{  
document.getElementById("clabeltel").innerHTML="";  
}  
}  
var qqobj = document.getElementById("qq");  
if(qqobj.value!=""){  
if(qqobj.value.length>12||isNaN(qqobj.value)){ 
document.getElementById("clabelqq").innerHTML="&nbsp;&nbsp;<font color=red>联系QQ必须为12位以内数字</font>";  
return false;
}else{  
document.getElementById("clabelqq").innerHTML="";  
}  
}  
return true;   
}   
</script>  
<%=Info.tform(mmm)%> 
<script language=javascript >  
 
</script>  
<%=Info.tform(mmm)%> 
