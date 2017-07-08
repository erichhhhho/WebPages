<%--
  Created by IntelliJ IDEA.
  User: q
  Date: 2017/7/6
  Time: 1:25
  To change this template use File | Settings | File Templates.
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.edu.scau.util.DBConfig"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.sql.Timestamp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>公告发布</title>
     <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
  <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<body>
    
     <div class="row">
      <div class="col-md-2"></div>
      <div class="col-md-8">
          

<%
  //  String nickname = (String)session.getAttribute("nickname");

// 读取留言数据
    Connection conn = DBConfig.getConnection();
    Statement statement = conn.createStatement();
    String sql = "SELECT m.msgid,  m.time,m.content from message m  order by msgid asc limit 0,50";
    ResultSet rs = statement.executeQuery(sql);
%>

  
        
        <br>
        <table class="table table-hover" >
            <tr>
                <th>留言内容</th>
            <!--    <th>留言人</th>   -->
                <th>留言时间</th>
                <th>操作</th>
            </tr>

             <%
                while(rs.next()){
                    //String a1 = "<a href='del.jsp?msgid="+rs.getInt("msgid")+"&tablename=message'>删除</a> ";
                    String a1="<a href=\"del.jsp?msgid="+rs.getInt("msgid")+"&tablename=message\" onclick=\"return confirm('真的要删除？')\">删除</a>";
                   System.out.print("a1= "+a1);
                    String a2 = "<a href='editmessage.jsp?msgid="+rs.getInt("msgid")+"&content="+rs.getString("content")+"'>修改</a>";
                    Timestamp date=rs.getTimestamp("time");
                    out.print("<tr><td><p>"+rs.getString("content")+"</p></td><td>"+date +"</td><td>"+a1+"&nbsp;&nbsp;"+a2+"</td></tr>");
                }
            %>
       
           
        </table>
        <br>
        </div>
        <div class="col-md-2"></div>
        </div>

        <div class="row">
<div class="col-md-4"></div>
<div class="col-md-4">
        <form  action="AddMessageServlet" method="post">
             
      
      <textarea name="content" id="content" class="form-control"  rows="5" cols="40"></textarea>
      <br>
      <div class="row">
      <div class="col-md-4"></div>
      <div class="col-md-2">
   <button name="submit" type="submit" id="submit" class="btn btn-default">提交</button>
   </div>
   <div class="col-md-2">
      <button name="reset" type="reset" id="reset" class="btn btn-default">重置</button> 
      </div>
      <div class="col-md-4"></div>
      </div>
      </form>
    </div>
    <div class="col-md-4"></div>
     
            

            
        
        </div>
    

</body>
</html>
