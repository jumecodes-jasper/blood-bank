<%-- 
    Document   : viewhospital
    Created on : Feb 23, 2016, 3:11:10 AM
    Author     : Oops
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="MyPack.MyDb"%>
<!--import statements-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <link rel="stylesheet" type="text/css" href="register.css"/>
<title>Hospital</title>
<meta name="keywords" content="ddddd" />
<meta name="description" content="" />
<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />
<link href="css/demo.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery.nivo.slider.js" type="text/javascript"></script>

</head>
   
    <body>
        <div id="tooplate_body_wrapper">
<div id="tooplate_wrapper">
	<div id="tooplate_top_bar">
    	<a class="social_btn twitter">&nbsp;</a>
        <a class="social_btn facebook">&nbsp;</a>
    </div>	
    
    <div id="tooplate_header">
        <div id="site_title"><h1> BLOOD BANK</h1></div>
        
	     <div id="tooplate_menu">
            <ul>
                <li><a href="index.html" class="current" style="font-size: 12px; margin-left: -130px;">Home</a></li>
                <li><a href=rselectp.html style="font-size: 12px; margin-right: 45px; margin-left: 5px;">Donor Registration</a></li>
       
               <li><a href="bloodbank.html" style=" font-size: 12px;; margin-right: 30px; width: 150px;">Mobilink paging service</a></li>
                
                <li><a href="viewhospital.jsp" style="font-size: 12px; margin-right: 30px; margin-left: 15px;">Life Saving Contacts</a></li>
                
                <li><a href="hospital.html" style="font-size: 12px;">Search Donor</a></li>
                
                <li><a href="aboutus.jsp" style="font-size: 12px;">About Us</a></li>
                
            </ul>    	
        </div> <!-- end of tooplate_menu -->
    </div> <!-- end of forever header -->
</div>

<div id="tooplate_middle_subpage">
    		
</div> <!-- end of middle -->

  <%
        try{
        String loc = request.getParameter("loc");
            String bld = request.getParameter("bld");
            
             MyDb db = new MyDb();
           Connection con =db.getCon();
           Statement stmt = con.createStatement();
           
           
           ResultSet rs = stmt.executeQuery("select hname,address,email,phone_number from hregister;"); 
          while( rs.next()){
           String name = rs.getString("hname");
           String add = rs.getString("address");
           String email = rs.getString("email");
           String phone_number = rs.getString("phone_number");
           
           
        %>
           <div style="background-color: #330D0D; color: #ffffff; margin-top: 20px;">
               <div style="margin-left: 200px; padding-top: 20px; padding-bottom: 20px;">
               <label>NAME    :</label> <%out.println(name);%>
               <br/>
          <label>ADDRESS      :</label> <%out.println(add);%>
           <br/>
         <label>EMAIL      :</label> <%out.println(email);%>
           <br/>
           <label>PHONE NO   :</label> <%out.println(phone_number);%>
             </div>
           </div><%
           
          }
        
        }catch(Exception e){}
        
        
        %>







<pre>







</pre>







<div id="tooplate_footer_wrapper">
	<div id="tooplate_footer">
    	<div class="col_w200 float_l">
        	<h4>Pages</h4>
                <ul class="tooplate_list" style="margin-left: 1px;">
                <li><a href="index.html" class="current">Home</a></li>
               <li><a href=rselectp.html>Donor Registration</a></li>
       
                <li><a href="bloodbank.html">Mobilink Paging Services</a></li>
                
                <li><a href="viewhospital.jsp">Life Saving Contacts</a></li>
                
                <li><a href="hospital.html">Search Donor</a></li>
                
                <li><a href="aboutus.jsp">About Us</a></li>
            </ul>
        </div>
        <div class="col_w200 float_l">
            <div class="fuut" style="padding-left: 70px;">
        	<h4>DEVELOPED BY</h4>
            <ul class="tooplate_list"> 
            <ul class="tooplate_list" style="font-size: 0.9em; margin-left: -20px;">
                UKONU JAHBUIKE<br/>
            OLATUNJI BALQUIS<br/>     
            ANABOR RICHARD<br/>
            AFOLABI OLUWASEUN
            </ul>
            </div>    
        </div>
		
        <div class="col_w200 float_r col_last">
        	<h4>Contact Us</h4>
            Aptech Computer Education<br />
            103 Allen Avenue,<br />
             Ikeja, lagos State<br /><br />
            Mobile Number:+234 8164790339<br />
            Email: <a href="https://accounts.google.com/ServiceLogin?sacu=1&continue=https%3A%2F%2Fwww.google.co.in%2Fwebhp%3Fsourceid%3Dchrome-instant%26ion%3D1%26espv%3D2%26es_th%3D1%26ie%3DUTF-8&hl=en#identifier">bloodbank@gmail.com</a>
        </div>
        
        <div class="cleaner"></div>
    </div>
</div>

<div id="tooplate_copyright_wrapper">
	<div id="tooplate_copyright">
	
    	Copyright � 2019 <a href="#">Back to top</a>
		
    </div>
</div>
</body>
</html>