<%@ page language="java"  pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page  import="java.sql.*" %>

<%
request.setCharacterEncoding("utf-8"); 
response.setCharacterEncoding("utf-8"); 
%>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<html>
  <head>
    <base href="<%=basePath%>">    
    <title>教师</title>    
     <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
  <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>


<script>  
var xmlHttpReq;
//创建一个XmlHttpRequest对象  
function createXmlHttpRequest()  
{  
    if(window.XMLHttpRequest)  
    {  
       xmlHttpReq = new XMLHttpRequest();//非IE浏览器  
    }else  
    {  
       xmlHttpReq = new ActiveXObject("Microsoft.XMLHTTP");//IE浏览器  
    }  
}  
//检测用户名是否已经被注册  
function checkUser()  
{  
var gonghao = document.getElementById("gonghao").value; 
var mima=document.getElementById("mima");
if(gonghao=="")  
{  
    alert("用户名必须填写！");  
    return false;  
}  
mima.value=gonghao;
//首先创建精灵对象  
createXmlHttpRequest();  
//指明准备状态改变时回调的函数名  
xmlHttpReq.onreadystatechange=handle;  
//尝试以异步的get方式访问某个URL  
//请求服务器端的一个servlet  
var url = "CheckGonghao?gonghao="+gonghao;  
xmlHttpReq.open("get",url,true);  
//向服务器发送请求  
xmlHttpReq.send(null);  
}

 


//状态发生改变时回调的函数  
function handle()  
{  
//准备状态为4  
    if(xmlHttpReq.readyState==4)  
    {  
    //响应状态码为200，代表一切正常  
       if(xmlHttpReq.status==200)  
       {  
           var res = xmlHttpReq.responseText;  
           var result = document.getElementById("result");  
           result.innerHTML = "<font color=red>"+res+"</font>";
           //////////////////  below by figo
           
           
           
       }  
    }
}  





</script>  




  </head>

  <body >

      <div class="row">
      <div class="col-md-4"></div>
      <div class="col-md-4">
  <form name="form1" id="form1" method="post" action="jiaoshi_add_post.jsp" class="form-horizontal">  
  <!--  <form name="form1" id="form1" method="post" >   -->
 
   <h3 align="center" style="color: black">添加教师</h3>
   <br>
   <div class="form-group">
       <label class="col-sm-3 control-label" for="gonghao"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>工号：</label>
       <div class="col-sm-9">
        <input class="form-control" name="gonghao" type="text" onblur="checkUser()" id="gonghao" placeholder="Number" >
         </div>   
       </div>
  
    <div class="form-group">
    <label class="col-sm-3 control-label" for="password"><span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>密码：</label>
      <div class="col-sm-9">
    <input type="password" class="form-control" id="password" placeholder="Password">
    </div>
     </div>

      <div class="form-group">
    <label class="col-sm-3 control-label" for="name"><span class="glyphicon glyphicon glyphicon-book" aria-hidden="true"></span>姓名：</label>
      <div class="col-sm-9">
    <input type="text" class="form-control" id="name" placeholder="Username">
    </div>
     </div>
    
    <div class="form-group">
    <label class="col-sm-3 control-label" for="sex"><span class="glyphicon glyphicon-heart-empty" aria-hidden="true"></span>性别：</label>
      
    <div class="radio col-sm-9">
    &nbsp;
        <label class="radio-inline">
        <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="男" checked=""> 男
        </label>
        <label class="radio-inline">
        <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="女"> 女
    </label>
    </div>

     </div>

     <div class="form-group">
    <label class="col-sm-3 control-label" for="Tel"><span class="glyphicon glyphicon-phone" aria-hidden="true"></span>电话：</label>
      <div class="col-sm-9">
    <input name="Tel" type="text" class="form-control" id="Tel" placeholder="Telephone">
    </div>
     </div>

     <div class="form-group">
    <label class="col-sm-3 control-label" for="PS"><span class="glyphicon glyphicon-search" aria-hidden="true"></span>备注：</label>
      <div class="col-sm-9">
      <textarea name="PS" id="PS" class="form-control" rows="3"></textarea>
   
    </div>
     </div>


      <div class="form-group">
    <div class="col-sm-offset-3 col-sm-9">
      <button name="submit" type="submit" id="submit" class="btn btn-default">提交</button>
      <button name="reset" type="reset" id="reset" class="btn btn-default">重置</button> 
    </div>
  </div>
     
 
   <!-- 
   <tr><td>任教科目：</td><td>
   <input name='renjiaokemu' type='text' id='renjiaokemu' value='' /></td></tr>
   
   <tr><td>出生年月：</td><td>
   <input name='chushengnianyue' type='text' id='chushengnianyue' value='' readonly="readonly" onClick="getDate(document.form1.chushengnianyue,'2')" need="1" /></td></tr>
   -->
  
   
</form>
</div>
<div class="col-md-4"></div>
    </div>
  </body>
</html>

