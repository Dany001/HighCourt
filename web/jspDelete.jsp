<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Upload Page</title>

<link rel="stylesheet" type="text/css" href="hicourt.css"/>
<script language="javascript" type="text/javascript">



</script>



<body onLoad="randomString()">
  <form name="f2" method="post"  action="jspDelete.jsp"> 
   <div id="wrapper">
   
   <div id="banner">
   
   </div>
   <div  id="navigation" align="center">
Delete Records
   
   </div>
   
   <div id="content_area">
   
   
 
       <p class="contact">
           
          <label for="name"><span style="font-weight:bold">Delete</span></label> 
    			<input  name="id" placeholder="Advocate Reg Number" required=""  type="text"> 
    			 </p>
                         
                         
                         
            <%
    String id = request.getParameter("id");
    if(id != null)
    {
    Connection con = null;
    PreparedStatement ps = null;

    try
    {

    Class.forName("com.mysql.jdbc.Driver");
     con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/Court","root","Dan@1234");
    String sql = "DELETE FROM Councel WHERE CouncelRegNo= '"+id+"'";
    ps = con.prepareStatement(sql);
    int i = ps.executeUpdate();
    if(i > 0)
    {
    %>
<html>
                            <head>
                           </head>
                          
                            <body>
                                 <script type="text/javascript">
                            alert("Your Record Deleted ");
                            window.location="index.jsp";
                            </script>
                           
                            </body>
                            </html>

<%


    }
    else
    {
      %>
<html>
                            <head>
                           </head>
                          
                            <body>
                                 <script type="text/javascript">
                            alert("Your Record Can not Deleted ");
                            window.location="index.jsp";
                            </script>
                           
                            </body>
                            </html>

<%
    }
        }
    catch(SQLException sqe)
    {
    request.setAttribute("error", sqe);
    out.println(sqe);
    }
    }
    %>

                         

	<div style="text-align:center">  
     <input name="submit" id="submit" tabindex="10" value="Delete" align="middle"type="submit">
	  </div>   </div>
   
  
   <div id="footer">
   </div>
   </div>
   
   
       
   </form>
   </body>
   </html>