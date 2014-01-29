
 <%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.Format"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@ include file="getcon.jsp"%>
<%@page import="java.util.Date"%>


<%
int reg;
 
    String sdate = request.getParameter("sdate");
     String edate = request.getParameter("edate");
   
try{
      String s;
       String s1;
       // out.println(edate);
 

       String s2=edate;
 
     
       if(edate.equals(""))
       {
           int i1=10;
       out.println(i1);
       }
       else{
            //String i1=String.valueOf(i);
              Format formatter;
 //  Date d2=new Date(sdate);
   Date d1 = new Date(edate);
   //Date date = new Date();
  formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
  //s = formatter.format(date);
   s1 = formatter.format(d1);
 //  s2=formatter.format(d2);
   out.println(s1);
        
               }
       
       
   
    
           
          
                   }
             catch(Exception e)
                    {
                        out.println(e.toString());
                    }

%>
