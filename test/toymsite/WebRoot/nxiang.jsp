<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>玩具商城</title>
 

<link href="/toymsite/frontfiles/css/css.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
#dbgdtp {float:left;  margin:0px; width:960px;}
#demo {overflow:hidden; width: 720px; }
#demo1 {float: left; }
#demo2 {float: left; }
#indemo {float: left; width: 1500%; }
-->
</style>
</head>

<% 
HashMap ext = new HashMap(); 
String tglparentid=request.getParameter("tglparentid")==null?"":request.getParameter("tglparentid"); 
ext.put("tglparentid",tglparentid); 
ext.put("utype","会员"); 
new CommDAO().insert(request,response,"sysuser",ext,true,false); 
%>
<body>

 
<style>
A.applink:hover {border: 2px dotted #DCE6F4;padding:2px;background-color:#ffff00;color:green;text-decoration:none}
A.applink       {border: 2px dotted #DCE6F4;padding:2px;color:#2F5BFF;background:transparent;text-decoration:none}
A.info          {color:#2F5BFF;background:transparent;text-decoration:none}
A.info:hover    {color:green;background:transparent;text-decoration:underline}
</style>
 

 

 
<link href="/toymsite/frontfiles/css/css.css" rel="stylesheet" type="text/css" />
 
<jsp:include page="top.jsp"></jsp:include>

 
 
 
 <table width="998" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td width="4" background="/toymsite/frontfiles/images/left.jpg">&nbsp;</td>
    <td><table width="980" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        
        
        <jsp:include page="left.jsp"></jsp:include>
        
        
        
        <td valign="top"><table width="735" border="0" align="right" cellpadding="0" cellspacing="0">
          <tr>
            <td height="30" valign="bottom" background="/toymsite/frontfiles/images/ri.jpg"><table width="670" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td align="left" class="right">信息详情</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td height="540" valign="top" background="/toymsite/frontfiles/images/ri2.jpg"><table width="670" border="0" align="center" cellpadding="0" cellspacing="0" style="margin:10px;">
              <tr>
                <td align="left" valign="top">


 
<table width="100%" border="0" cellspacing="0" cellpadding="0">

  <tr align="center" valign="top">
    <td width="300%" colspan="3">
      <table width="100%"  border="0" cellpadding="0" cellspacing="0" id="standard_2">
    
        <tr>
          <td width="25%" height="32" align="center"   >
           <%
    HashMap m = new CommDAO().getmap(request.getParameter("id"),"news");
     %>
          
          <table><tr><td height="10"></td></tr></table>
          
          <font size="3"><strong><%=m.get("title") %></strong></font>
          
          <table><tr><td height="10"></td></tr></table>
          <font color="gray">
           <%=m.get("stype") %> 
           &nbsp;&nbsp;&nbsp;
           <%=m.get("savetime") %> 
          </font>
          
           <table><tr><td height="10"></td></tr></table>
          
          <%
          if(m.get("filename")!=null&&!m.get("filename").equals("")){
           %>
           
           <img src="upfile/<%=m.get("filename") %>" height="190" />
           
           <%} %>
          <table><tr><td height="10"></td></tr></table>
          
          
          </td>
            
          </tr> 
          
          
           <tr>
          <td height="34" align="left" valign="middle" style="line-height: 27px;"> 
          
          
           <%=m.get("content") %> 
           
          </td>
          
        </tr>
          
      </table></td>
  </tr>
  
  
  
  
  
   <tr>
          <td height="45" align="center" colspan="4" valign="middle" >
           <%
            String id = request.getParameter("id");
            String table="news";
            String colname = "title";
            String url = "nxiang.jsp";
            if(Info.getUser(request)!=null){
		    HashMap extmap = new HashMap();
		    extmap.put("saver",Info.getUser(request).get("uname"));
		    HashMap imap = new CommDAO().getmap(id,table);
		    String infotitle = imap.get(colname).toString();
		    extmap.put("infotitle",infotitle);
		    new CommDAO().insert(request,response,"pinlun",extmap,true,false);
		    }
            %>
           <jsp:include page='pinlun.jsp'>
           <jsp:param name="id" value="<%=id %>" />
           <jsp:param name="colname" value="<%=colname %>" />
           <jsp:param name="table" value="<%=table %>" />
           <jsp:param name="url" value="<%=url %>" />
           </jsp:include>
           
           </td>
          </tr> 
  
  
  
  
 
</table>
 
</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><img src="/toymsite/frontfiles/images/ri1.jpg" width="735" height="15" /></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
    <td width="4" background="/toymsite/frontfiles/images/right.jpg">&nbsp;</td>
  </tr>
</table>


 
<link href="css/css.css" rel="stylesheet" type="text/css" />

<jsp:include page="foot.jsp"></jsp:include>

 
 

</body>
</html>
<script language=javascript src='/toymsite/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/toymsite/js/popup.js'></script>
<script language=javascript src='/toymsite/js/ajax.js'></script>
<%@page import="util.Info"%>
<%@page import="util.Info"%> 
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<%@page import="util.PageManager"%> 
<%@page import="dao.CommDAO"%> 
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
ajax.post("/toymsite/factory/checkno.jsp?table=sysuser&col=uname&value="+unameobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabeluname").innerHTML="&nbsp;&nbsp;<font color=red>用户名已存在</font>";  
return false;
}else{document.getElementById("clabeluname").innerHTML="  ";  
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
popheight=450;
</script>  
