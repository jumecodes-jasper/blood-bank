<%-- 
    Document   : Ureg
    Created on : Feb 22, 2016, 8:48:29 PM
    Author     : Oops
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="MyPack.MyDb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
       try{
          String name = request.getParameter("dname");
          String email = request.getParameter("email");
          String  mob = request.getParameter("mobile");
          String gen = request.getParameter("gender");
          String age = request.getParameter("age");
          String bld = request.getParameter("bld");
          String loc = request.getParameter("location");
          String pass = request.getParameter("password");
          
          MyDb db = new MyDb();
         Connection con = db.getCon();
         Statement stmt = con.createStatement();
         stmt.executeUpdate("insert into uregister(name,email,mobile,gender,age,bld,location,pass)values('"+name+"','"+email+"','"+mob+"','"+gen+"','"+age+"','"+bld+"','"+loc+"','"+pass+"') ");
         out.println("welcome : "+name);
          String redirectedPage = "/parentPage";
          response.sendRedirect("registrationsuccess.jsp");
      
       }catch(Exception e){
       out.println(e);
       }
        
        %>
    </body>
</html>
