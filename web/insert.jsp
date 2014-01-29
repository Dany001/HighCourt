
 <%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.Format"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@ include file="getcon.jsp"%>
<%@page import="java.util.Date"%>


<%
int reg;
  String regnum = request.getParameter("randomfield");
   String name = request.getParameter("name");
   String phone = request.getParameter("phone"); 
   String email = request.getParameter("Emailid");
 String user = request.getParameter("user");
   String pass = request.getParameter("pass");
    short android = Short.parseShort(request.getParameter("AndroidApps"));
    short web = Short.parseShort(request.getParameter("WebApps"));
  short mail = Short.parseShort(request.getParameter("Email"));
    String emailid = request.getParameter("emailid");
      short sms=Short.parseShort(request.getParameter("sms"));
      //long mobnum=Long.parseLong(request.getParameter("mobnum"));
     String mobnum=request.getParameter("mobnum");
    String sdate = request.getParameter("sdate");
   String edate = request.getParameter("edate");
       String pay=request.getParameter("payment");
       //float pay=Float.parseFloat(request.getParameter("payment"));
     String Dan=request.getParameter("dan");
     String payment= request.getParameter("PaymentCheck");
    int smscount=0;
     int stotalcount=0;
   
try{
      String s;
      String s1;
      String s2;
     
  Format formatter;
  Date date = new Date(sdate);
  //Date d1=new Date(edate);
   Date d2=new Date();
   
   formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
  s = formatter.format(date);
  // s1 = formatter.format(d1);
  s2 = formatter.format(d2);
  int s3=0;
  s2 = formatter.format(d2);
  
  String sql = "SELECT UserName FROM Councel WHERE UserName ='"+user+"'";
Statement stm = cn.createStatement();
stm.executeQuery(sql);
ResultSet rs= stm.getResultSet();
int count = 0;
while (rs.next ()){
count++;
}
if(count==0)
{
    PreparedStatement ps=cn.prepareStatement("insert into Councel  values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                        ps.setString(1,regnum);
                        ps.setString(2,name);
                         ps.setString(3,phone);
                          ps.setString(4,"");
                          ps.setShort(5,sms);
                          ps.setString(6,payment);
                        ps.setString(7,s);
                         //ps.setString(8,s1);
                          
                    ps.setInt(8,s3);
                         ps.setInt(9,smscount);
                         ps.setInt(10,stotalcount);
                           ps.setString(11,s2);
                         
                     
                        ps.setString(12,user);
                        ps.setString(13,pass);
                        ps.setString(14,mobnum);
                         ps.setShort(15,mail);
                         ps.setString(16,emailid);
                         ps.setShort(17,android);
                        ps.setShort(18,web);
                        ps.setString(19,email);
                        ps.setString(20,Dan);
                        ps.setString(21,s2);
                  
                        ps.setString(22,pay);
             
                        int i=ps.executeUpdate();
                       if(i==1)
                             {
                   %>
<html>
                            <head>
                           </head>
                          
                            <body>
                                 <script type="text/javascript">
                            alert("Your Registration Has Been Compleated ");
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
                            alert("Your Registration can not Compleated ");
                            window.location="index.jsp";
                            </script>
                           
                            </body>
                            </html>

<%
                    }
 
}
else
	{
              %>
<html>
                            <head>
                           </head>
                          
                            <body>
                                 <script type="text/javascript">
                            alert("User Name Already Rigisterd ");
                            window.location="index.jsp";
                            </script>
                           
                            </body>
                            </html>

<%
	
	}
}catch(Exception e){
out.println("Exception is ;"+e);
}
%>