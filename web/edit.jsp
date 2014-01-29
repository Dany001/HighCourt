<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@ include file="getcon.jsp"%>
<%@page import="java.util.Date"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Upload Page</title>

<link rel="stylesheet" type="text/css" href="hicourt.css"/>
<script language="javascript" type="text/javascript" src="datetimepicker.js">
</script>
<script language="javascript" type="text/javascript">
    
        function validateForm(theForm){


if(theForm.id.value=="")
{
    alert("Please enter registratation date");
    theForm.id.focus();
    return false; 
}

        if(theForm.name.value==""){

        //Please enter username

        alert("Please enter  Name.");

        theForm.name.focus();

        return false;

        }
        if(theForm.phone.value==""){
        //please enter passward
        alert("Please enter phonenum.");
        theForm.phone.focus();
        return false;
        }

        if(theForm.email.value==""){
        //please enter passward
        alert("Please enter email id.");
        theForm.email.focus();
        return false;
        }


if(theForm.user.value=="")
{
    alert("Please enter user name");
    theForm.user.focus();
    return false; 
}


if(theForm.pass.value=="")
{
    alert("Please enter password");
    theForm.pass.focus();
    return false; 
}


if(theForm.sdate.value=="")
{
    alert("Please enter start date");
    theForm.sdate.focus();
    return false; 
}
        return true;


        }





            function mobvalidate()
            { 
                textbox=document.getElementById('mobnum');
            if(textbox.disabled)
            {

            return true
            }
            if( document.form1.mobnum.value == "" ||
            isNaN( document.form1.mobnum.value) ||
            document.form1.mobnum.value.length != 10 )
            {
            alert( "Please provide a Mobile No in the format 123." );
            document.form1.mobnum.focus() ;

            return false;
            }


            return( true );
            }






            function enableText(checkBool, textID)
              {
                textFldObj = document.getElementById(textID);
                //Disable the text field
                textFldObj.disabled = !checkBool;
                //Clear value in the text field
                if (!checkBool) { textFldObj.value = ''; }
              }
            function currencyvalidate() {
                    var currency = document.getElementById("payment").value;
                    var pattern = /^\d+(?:\.\d{0,2})$/ ;
                    if (pattern.test(currency)) {
                        alert("Currency is in valid format");
                        return true;
                    } 
                        alert("Currency is not in valid format!Enter in 00.00 format");
                        // window.location="edit.jdp";
                        return false;

                }
            function isValidChar(char){
                   var txt = char;
                    var found = false;
                    var validChars = "0123456789"; //List of valid characters

                    for(j=0;j<txt.length;j++){ //Will look through the value of text
                        var c = txt.charAt(j);
                        found = false;
                        for(x=0;x<validChars.length;x++){
                            if(c==validChars.charAt(x)){
                                found=true;
                                break;
                            }
                        }
                        if(!found){
                            //If invalid character is found remove it and return the valid character(s).
                            document.getElementById('mobnum').value = char.substring(0, char.length -1);
                            break;
                        }
                    }
                }




</script>



<body onLoad="randomString()">
   <form name="form1" id="form1" action="update.jsp" method="post" onsubmit="return validateForm(this)&& mobvalidate();" >
   <div id="wrapper">
   
   <div id="banner">
   </div>
   <div  id="navigation" align="center">
  Update Records
   </div>
   
         <% String name="";
     String user="";
     String pass="";
     String s3="";
     String s4="";
       String phone="";
         String email="";
         short android=0;
         short  web=0;
         short pay1=0;
         short emailser=0;
         String emailid="";
         short smsser=0;
         String mobnum="";
         String sdate="";
         String edate="";
         String pay="";
         String dan="";
         String id=request.getParameter("id");
  
  try 
                {

              
String selectStoredProc = "SELECT * FROM Councel WHERE CouncelRegNo ='"+id+"'";

                        PreparedStatement ps = cn.prepareStatement(selectStoredProc);
                    ResultSet rs=ps.executeQuery();
                    while(rs.next()) {
                     
                      
                 
                       dan=rs.getString(20);
                     id = rs.getString(1);
                        name=rs.getString(2);
                     phone=rs.getString(3);
                      email=rs.getString(19);
                      user=rs.getString(12);
                        pass=rs.getString(13);
                      //  pay1=rs.getShort(6);
                        android=rs.getShort(17);
                        web=rs.getShort(18);
                        emailser=rs.getShort(15);
                       emailid=rs.getString(16);
                       
                      %> <script>
                          txtbox=getElementById('emailid');
                          var eid=<%=emailid%>
                          if(eid==null || eid==undefined || eid=='')
                          {                
    txtbox.disabled=true;
                          }
                          else
                              
    {
        textbox.disabled=false;
    }
                          </script><% 
                           
                       smsser=rs.getShort(5);
                      
                       mobnum=rs.getString(14);
                        
                       sdate=rs.getString(7);
                       //  out.println(sdate);
                         
                           SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
                           Date date = sdf.parse(sdate);
            SimpleDateFormat sdf1 = new SimpleDateFormat("dd-MMM-yyyy hh:mm:ss");
           s3 = sdf1.format(date);
        
                         
                       edate=rs.getString(8);
                       
                        
                           Date date1 = sdf.parse(edate);
            
           s4 = sdf1.format(date1);
           
                       
                      pay1=rs.getShort(6);
                         out.println(pay1);
                      pay=rs.getString(22);
                      out.println(pay);
                        
                    }
                    rs.close();
                    rs = null;
                } 
                catch (Exception e) {
                    System.out.println(e.getLocalizedMessage());
                }
                finally {     
                }

 pw = response.getWriter();
  
 // pw.println(android);
  %>

    
    
       
       
       
       
   <div id="content_area">
   
   <p>
   
            <label for="RegNum" class="bold"><span style="font-weight:bold">RegNum</span></label> 
    	    <input type="text" name="id" size="50"value="<%=id%>" readonly > 
    	    </p>
            
             <p>   <label for="Name"><span style="font-weight:bold">Name &nbsp;</span></label>
                <input type="text" name="name" size="50"  value="<%=name%>" >
              </p>
   
   <p><label for="Phone"><span style="font-weight:bold">Phone</span></label> 
    	       <input type="text" name="phone" value="<%=phone%>"size="50" > 
    	       </p>
               
               <p><label for="Emailid"><span style="font-weight:bold">Emailid</span></label>
    	         <input type="text" name="email" value="<%=email%>"size="50" > 
	         </p>
<p>..............................................................................................................................................................................</p>
       
  <p><label for="UserName"><span style="font-weight:bold">UserName</span></label>
                <input type="text" name="user" value="<%=user%>" size="50"  >
              </p>
              
              
               <p>   <label for="Password"><span style="font-weight:bold">Password</span></label> 
    	      <input type="password" name="pass" value="<%=pass%>"size="50"  >
<p>..............................................................................................................................................................................</p>
   
        <p>
                    <input type="checkbox" name="Andro" value=1 id="check1"><label for="comment"><span style="font-weight:bold">AndroidApps</span></label><br>
     <input name="Andro" type="hidden" value=0 />
     <script>
     var a=<%=android%>;
     if(a==1){
     document.getElementById('check1').checked=true;
     }else{
     document.getElementById('check1').checked=false;
     }
     </script>
     </p>
                 
                 

<p>
    <input type="checkbox" name="web1" value=1 id="check2"><label for="comment"><span style="font-weight:bold">WebApps</span></label><br>
     <input name="web1" type="hidden" value=0 />
     <script>
     var b=<%=web%>;
     if(b==1){
     document.getElementById('check2').checked=true;
     }else{
     document.getElementById('check2').checked=false;
     }
     </script>
     </p>
     
        <p class="contact"><input type="checkbox" name="emailser" id="check3" value="1"onclick="enableText(this.checked, 'emailid');"><label for="comment"><span style="font-weight:bold">EmailService</span></label>
     <input name="emailser" type="hidden" value="0" />
     
     <script>
     var b=<%=emailser%>;
     if(b==1){
     document.getElementById('check3').checked=true;
     }else{
    document.getElementById('check3').checked=false;
     }
     </script>
     <input type=email name="emailid"id="emailid" value="<%=emailid%>" >
   
      <script>
    var x=<%=emailser%>
         if(x==1){
        document.getElementById('emailid').disabled=false;     
         }
         else
         {
             document.getElementById('emailid').disabled=true;
         }
       </script>  
				
     <p class="contact"><input type="checkbox" name="smsser"id="check4" value="1"onclick="enableText(this.checked, 'mobnum');"><label for="comment"><span style="font-weight:bold">SmsService</span></label>
     <input name="smsser" type="hidden" value="0" />
        <script>
     var d=<%=smsser%>;
     if(d==1){
     document.getElementById('check4').checked=true;
     }else{
     document.getElementById('check4').checked=false;
     }
     </script>
     <input type=tel name="mobnum"id="mobnum" value="<%=mobnum%>"  required onkeyup="isValidChar(this.value);">
         
          <script>
    var y=<%=smsser%>
         if(y==1){
        document.getElementById('mobnum').disabled=false;     
         }
         else
         {
             document.getElementById('mobnum').disabled=true;
         }
       </script>   
         </p>
         
<p>..............................................................................................................................................................................</p>

<p><label for="StartDate"><span style="font-weight:bold">StartDate</span></label> 
                     <input type="text" name="sdate" maxlength="25" size="25"id="demo2" value="<%=s3%>"><a href="javascript:NewCal('demo2','ddmmmyyyy',true,24)"><img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date" ></a>
                 </p>
                 
                 
                 
                 <p ><label for="ExpireDate"><span style="font-weight:bold">ExpireDate</span></label> 
                     <input type="Text" id="demo1" name="edate"maxlength="25" size="25" value="<%=s4%>"><a href="javascript:NewCal('demo1','ddmmmyyyy',true,24)"><img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date" ></a>
                 </p>
                 
 <p><input type="checkbox" id="check5" name="Payment" value="1" onclick="enableText(this.checked,'pay1');"><label for="comment"><span style="font-weight:bold">Payment</span></label>
                      <input name="Payment" type="hidden" value="0" />
                      
                      
                      
                           <script>
     var e=<%=pay1%>;
     
     if(e==1){
     document.getElementById('check5').checked=true;
     }else{
     document.getElementById('check5').checked=false;
     }
     </script>
     <input type=text name="payment1" id="pay1" value="<%=pay%>">
     
     <script>
    var z=<%=pay1%>
         if(z==1){
        document.getElementById('pay1').disabled=false;     
         }
         else
         {
             document.getElementById('pay1').disabled=true;
         }
       </script>   
      </P>

<p>..............................................................................................................................................................................</p>
     <p>
          <label for="comment"><span style="font-weight:bold">DanReresen</span></label>
      <input type="text" name="dan"value="<%=dan%>"size="50" >
      </p>

    
      <div style="text-align:center">  
      <input name="submit" id="submit" tabindex="10" value="UPDATE" align="middle"type="submit">
      </div>
      </div>

   <div id="footer">
   </div>
   </div>                  


</form>
   </body>
   </html>