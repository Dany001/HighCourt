<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
 <%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.Format"%>
<%@ include file="getcon.jsp"%>
<%@page import="java.util.Date"%>

<%
     String id1=request.getParameter("id"); 
         String phone=request.getParameter("phone"); 
        String name=request.getParameter("name"); 
           short smsser=Short.parseShort(request.getParameter("smsser")); 
         short  payment=Short.parseShort(request.getParameter("Payment"));
          // String payment=request.getParameter("pay1");
           String sdate=request.getParameter("sdate"); 
         String edate=request.getParameter("edate"); 
         String user=request.getParameter("user"); 
       String pass=request.getParameter("pass"); 
         String mobnum=request.getParameter("mobnum");
          short emailser=Short.parseShort(request.getParameter("emailser"));
          String Emailid=request.getParameter("emailid");
        short android=Short.parseShort(request.getParameter("Andro"));
        short  web=Short.parseShort(request.getParameter("web1"));
           String email=request.getParameter("email"); 
           String pay=request.getParameter("payment1"); 
           String dan=request.getParameter("dan");
    

 try {
     //int s4=0;
         String s1;
      String s;
      int s3=0;
      String s2;
  Format formatter;
   Date d2=new Date(sdate);
  
   Date date = new Date();
  formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
  s = formatter.format(date);
 
   s2=formatter.format(d2);
  
  psmnt= cn.prepareStatement("update Councel set CouncelName=?,PhoneNo=?,SMSAlert=?,Payment=?,StartDate=?,ExpireDate=?,LastUpdatedOn=?,UserName=?,Password=?,SMSNotifyNo=?,EmailService=?,EmailNotify=?,AndroidService=?,WebService=?,EmailID=?,DanRepre=?,Amount=? where CouncelRegNo=?");
             

  psmnt.setString(1,name);
   psmnt.setString(2,phone);
  psmnt.setShort(3,smsser);
    psmnt.setShort(4,payment);
 
     psmnt.setString(5,s2);
     
    if(edate.equals(""))
       {
           int i1=0;
      psmnt.setInt(6,i1);
       }
       else{
            //String i1=String.valueOf(i);
            //  Format formatter;
 //  Date d2=new Date(sdate);
   Date d1 = new Date(edate);
   //Date date = new Date();
  formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
  //s = formatter.format(date);
   s1 = formatter.format(d1);
 //  s2=formatter.format(d2);
   psmnt.setString(6,s1);
        
               }
       
       
   
     
   /*
           int e1=Integer.parseInt(s1);
     String e3;
   if(e1!=0)
           {
               psmnt.setInt(6,e1);
             
           }
  else
   {
 //e3=String.valueOf(e1);
     int e2=0;
           psmnt.setInt(6,e2);
   }*/
   
   
   
   psmnt.setString(7,s);
   psmnt.setString(8,user);
  psmnt.setString(9,pass);
 
  psmnt.setString(10,mobnum);
   psmnt.setShort(11,emailser);
   psmnt.setString(12,Emailid);
    psmnt.setShort(13,android);
  psmnt.setShort(14,web);
    psmnt.setString(15,email);
    psmnt.setString(16,dan);
 psmnt.setString(17,pay);
  psmnt.setString(18,id1);
       
   psmnt.executeUpdate(); 

               %>
<html>
                            <head>
                           </head>
                          
                            <body>
                                 <script type="text/javascript">
                            alert("Your Record Updated ");
                            window.location="index.jsp";
                            </script>
                           
                            </body>
                            </html>

<%
       }
       catch(Exception e){
        out.print("try not allowed"+e);
                }


%>







