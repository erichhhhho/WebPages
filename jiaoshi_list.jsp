
<%@ page language="java"  pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<html> 
 <head>

    <base href="<%=basePath%>">    
    <title>教师</title>
    
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
  <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>

  </head>

<body >
  


<div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">
  <p><h4>已有教师列表：</h4></p>
  <form class="form-inline" name="form1" id="form1" method="post" action="jiaoshi_list.jsp">
  <div class="form-group">
   搜索:工号:
  <input name="gonghao" class="form-control" type="text" id="gonghao" /> </div>

  <input type="submit"  class="btn btn-default" name="Submit" value="查找" />
</form>
  </div>
  <!-- Table -->
<table class="table  table-hover" width="100%" align="center" cellpadding="3" cellspacing="1" style="border-collapse:collapse">  
  <tr>
    <th>序号</th>
    <th>工号</th>
    
    <th>姓名</th>
    <th>性别</th>
    <th>电话</th>
     <th>备注</th>
     
    <th>操作</th>
  </tr>
  
  <%
  String sql="";
  sql="select * from jiaoshi where 1=1";
  if(request.getParameter("gonghao")=="" ||request.getParameter("gonghao")==null )
  {}
  else
  {
    sql=sql+" and gonghao like '%"+request.getParameter("gonghao")+"%'";
  }
  sql=sql+" order by gonghao desc";
 ResultSet RS_result=connDbBean.executeQuery(sql);
 String id="";
 String gonghao="";String xingming="";String xingbie="";String dianhua="";String renjiaokemu="";String chushengnianyue="";String beizhu="";
 String addtime=""; String mima="";
 int i=0; 
 while(RS_result.next()){
 i=i+1;
 //id=RS_result.getString("id");
gonghao=RS_result.getString("gonghao");xingming=RS_result.getString("xingming");xingbie=RS_result.getString("xingbie");dianhua=RS_result.getString("dianhua");renjiaokemu=RS_result.getString("renjiaokemu");chushengnianyue=RS_result.getString("chushengnianyue");beizhu=RS_result.getString("beizhu");
 //addtime=RS_result.getString("addtime");
mima=RS_result.getString("mima"); 
%>
  <tr>
    <td><%=i %></td>
    <td><%=gonghao %></td>
    
    <td><%=xingming %></td>
    <td><%=xingbie %></td>
    <td><%=dianhua %></td>
    <td><%=beizhu %></td>
    
    <td><a href="jiaoshi_updt.jsp?gonghao=<%=gonghao%>">修改</a>  <a href="del.jsp?gonghao=<%=gonghao %>&tablename=jiaoshi" onclick="return confirm('真的要删除？')">删除</a></td>
  </tr>

  <%  }
   %>
  	
</table>
</div>
<br>
以上数据共<%=i %>条,<a style="cursor:hand" onclick="javascript:window.print();">打印本页</a>
</body>
</html>

