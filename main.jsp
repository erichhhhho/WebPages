<%@ page language="java"  pageEncoding="gb2312"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
  <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>

  <base href="<%=basePath%>">    
  <meta http-equiv="Content-Type" content="text/html; charset=gb2312">

  <title>ѧ���ɼ�����ϵͳ</title>    
  <%-- base �����ǩ��html�б�ʾ����ҳ���е�Ĭ��������jsp��Ĭ�ϵģ�--%>

  <STYLE type=text/css>
    BODY {  BACKGROUND: #cccccc; MARGIN: 0px; FONT: 9pt ����}
    TABLE {BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; BORDER-BOTTOM: 0px}
    TD {   FONT: 12px ����}

    h4 a {   FONT: 15px ����;font-weight: bold;}
    h4 b{
      FONT: 10px ����;font-weight: bold;
    }
    a {  FONT: 13px ����; color: black}
.bd-masthead {
    position: relative;
    
    color: #cdbfe3;
    
    background-image: -webkit-linear-gradient(315deg,#271b38,#563d7c,#7952b3);
    background-image: -o-linear-gradient(315deg,#271b38,#563d7c,#7952b3);
    background-image: linear-gradient(135deg,#271b38,#563d7c,#7952b3);
}


  </STYLE>

</head> 
<body  onload="window.resizeTo(window.screen.width - 4,window.screen.height-50);window.moveTo(-4,-4)" style="MARGIN: 0px" scroll=yes  oncontextmenu="window.event.returnValue=false" onselectstart="return false" onMouseOver="window.status='ѧ���ɼ�����ϵͳ';return true" OnMouseOut="window.status='ѧ���ɼ�����ϵͳ';return true" onmousedown="window.status='ѧ���ɼ�����ϵͳ';return true" onmouseup="window.status='ѧ���ɼ�����ϵͳ';return true">

  <script>
    function cancelLink() {
      if (window.event.srcElement.tagName == "A" && window.event.shiftKey) 
        window.event.returnValue = false;}

      if (self!=top)
        {  top.location=self.location;  }
      function switchSysBar(){
        if (switchPoint.innerText==3){
          switchPoint.innerText=4
          document.all("frmTitle").style.display="none"
        }else{
          switchPoint.innerText=3
          document.all("frmTitle").style.display=""
        }}
      </script>

      

      <script>
        function tick() {
          var ye,mo,da
          var hours, minutes, seconds, xfile;
          var intHours, intMinutes, intSeconds;
          var today;
          today = new Date();
          ye = today.getYear()+1900;
          mo = today.getMonth()+1;
          if (mo < 10) {
            mo = "0"+mo;
          }
          da = today.getDate();
          if (da < 10) {
            da = "0"+da;
          }
          intHours = today.getHours();
          intMinutes = today.getMinutes();
          intSeconds = today.getSeconds();
          if (intHours == 0) {
            hours = "12:";
xfile = "PM";//��ҹ
} else if (intHours < 12) {
  hours = intHours+":";
xfile = "AM";//����
} else if (intHours == 12) {
  hours = "12:";
xfile = "PM";//����
} else {
  intHours = intHours - 12
  hours = intHours + ":";
xfile = "PM";//����
}
if (intHours < 10) {
  hours = "0"+intHours+":";
}
if (intMinutes < 10) {
  minutes = "0"+intMinutes+":";
} else {
  minutes = intMinutes+":";
}
if (intSeconds < 10) {
  seconds = "0"+intSeconds+" ";
} else {
  seconds = intSeconds+" ";
}
var color, size, face, out;
var text = "black";
var font_size = 1;
var font_face = "Arial";
color = (text)? text : "black";
size = (font_size)? font_size : 1;
face = (font_face)? font_face : "Arial";
timeString = "<font style='font-size:14px;'>��ǰʱ��:";
timeString += ye+"-"+mo+"-"+da+"  ";
timeString += hours+minutes+seconds+" "+xfile+"&nbsp;&nbsp;&nbsp;";
Clock.innerHTML = timeString;
window.setTimeout("tick();", 100);
}
window.onload = tick;//���ڼ���
</script> 

<div class="bd-masthead">

  <h1><small>&nbsp;&nbsp;��ӭʹ��&nbsp;</small>ѧ���ɼ�����ϵͳ</h1>

  <table width="100%" border="0" cellspacing="0" cellpadding="0" style="color:#ffffff">
  <tr> 
    <td width="67%" height="50" rowspan="2"><div style="font-family:����; color:#FFFFFF; filter:Glow(Color=#000000,Strength=2); WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 19pt; margin-top:5pt"></div></td>
    <td width="33%" align="right" valign="middle"> 
     <font id="Clock"
     style="FONT-SIZE: 9pt; FILTER: dropshadow(color=#FFFFFF,offx=1,offy=1,positive=1);COLOR: white;" 
     align=center>&nbsp;    
   </font>&nbsp;
 </td>
</tr>  
<tr>
  <td align="right"><A href="logout.jsp" onClick="{if(confirm('ȷ��Ҫ�˳���')){return true;}return false;}"><FONT color=white>��ǰ�û�:<%=request.getSession().getAttribute("username") %>[<%=request.getSession().getAttribute("cx") %>]&nbsp;&nbsp;</FONT><IMG height=16 alt=�˳�ϵͳ src="images/exit.gif" width=16 align=absMiddle border=0><FONT color=white>&nbsp;��ȫ�˳�</FONT></A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
  </td>
</tr>  
</table>

</div>

<table border="0" cellPadding="0" cellSpacing="0" height="88%" width="100%">
  <tr>
    <td width="175" id="frmTitle" valign="top"> 

      <%
      if(request.getSession().getAttribute("cx").equals("student"))
        {
      %>
      <%@ include file="menu_admin2.jsp"%>
      <%
    }
    else
    {
    if(request.getSession().getAttribute("cx").equals("teacher"))
    {
    %>
    <%@ include file="menu_admin3.jsp"%>
    <%
  }
  else
  {    %>
  <%@ include file="menu_admin.jsp"%>
  <%
}
}
%>

</td>
<td style="WIDTH: 9pt">
  <table border="0" cellPadding="0" cellSpacing="0" height="100%">
    <tr>
      <td bgcolor="#7952b3" style="HEIGHT: 100%" onClick="switchSysBar()"> <font style="FONT-SIZE: 9pt; CURSOR: default; COLOR: #ffffff"> 
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <span class="navPoint" id="switchPoint" title="�ر�/������"></span><br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        ��Ļ�л� </font></td>
      </tr>
    </table>
  </td>
  <td>

    <iframe frameBorder="0" id="main" name="main" scrolling="yes" src="sy.jsp" style="HEIGHT: 100%; VISIBILITY: inherit; WIDTH: 100%; Z-INDEX: 1">
    </iframe>

  </td>
</tr>
</table>
<TABLE class=small cellSpacing=0 cellPadding=0 width="100%" order=0>
  <TBODY>
    <TR vAlign=bottom> 
      <TD height="25" align=middle valign="bottom" bgcolor="#7952b3"> <SPAN style="FONT-WEIGHT: bold; FILTER: dropshadow(color=#666666,offx=1,offy=1,positive=1); WIDTH: 100%; COLOR: #ffffff"><h3>ѧ���ɼ�����ϵͳ</h3></SPAN></TD>
    </TR>
  </TBODY>
</TABLE>
</html>
<script>
  if(window.screen.width<'1024'){switchSysBar()}
</script>

