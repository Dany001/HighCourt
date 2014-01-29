<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Upload Page</title>

<link rel="stylesheet" type="text/css" href="hicourt.css"/>
<script language="javascript" type="text/javascript" src="datetimepicker.js">
</script>
<script language="javascript" type="text/javascript">



    function randomString() {
            var chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXTZabcdefghiklmnopqrstuvwxyz";
            var string_length = 8;
            var randomstring = '';
            for (var i=0; i<string_length; i++) {
                    var rnum = Math.floor(Math.random() * chars.length);
                    randomstring += chars.substring(rnum,rnum+1);
            }
            document.form1.randomfield.value = randomstring;

    }



    function validateForm(theForm)
        {

    if(theForm.randomfield.value=="")
    {
        alert("Please enter registratation date");
        theForm.randomfield.focus();
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

        if(theForm.Emailid.value==""){
        //please enter passward
        alert("Please enter email id.");
        theForm.Emailid.focus();
        return false;
        }

    if(theForm.user.value=="")
    {
        alert("Please enter username");
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



            
         function currencyvalidate() {
             textbox=document.getElementById('payment');
              if(textbox.disabled)
    {

    return true
    }
   
        
        var currency = document.getElementById("payment").value;
        var pattern = /^\d+(?:\.\d{0,2})$/ ;
        if (pattern.test(currency)) {
           
            return true;
        } 
            alert("Currency is not in valid format!Enter in 00.00 format");
            return false;

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
    document.form1.mobnum.value.length != 10 || document.form1.phone.value.length!=10)
    {
    alert( "Please provide a Mobile No in the format 123." );
    document.form1.mobnum.focus() ;

    return false;
    }


    return( true );
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
                    document.getElementById('mobnum').value = char.substring(0, char.length -25);
                    document.getElementById('phone1').value = char.substring(0, char.length -25);
                    document.getElementById('payment').value = char.substring(0, char.length -25);
                    break;
                }
            }
        }

</script>



<body>
   <form name="form1" id="form1" action="insert.jsp" method="post"onsubmit="return validateForm(this)&& mobvalidate()&&currencyvalidate();" > 
   <div id="wrapper">
   
   <div id="banner">
   
   </div>
   <div  id="navigation" align="center">
   Registration Form
   
   </div>
   
   <div id="content_area">
   
   <p class="contact">
   
            <label for="RegNum" class="bold"><span style="font-weight:bold"><em style="color:red">*</em>RegNum </span></label> 
    	    <input type="text" name="randomfield" size="50"  > 
    	    </p>
            
             <p class="contact">   <label for="Name"><span style="font-weight:bold"><em style="color:red">*</em>Name &nbsp;</span></label>
                <input type="text" name="name" size="50"  >
              </p>
              
              
             
               <p class="contact"><label for="Phone"><span style="font-weight:bold"><em style="color:red">*</em>Phone</span></label> 
    	       <input type="text" name="phone" id="phone1"size="50"onKeyUp="isValidChar(this.value);"> 
    	       </p>

                 <p class="contact"><label for="Emailid"><span style="font-weight:bold"><em style="color:red">*</em>Emailid</span></label>
    	         <input type="email" name="Emailid" size="50" > 
	         </p>
                 <p>..............................................................................................................................................................................</p>
                 
                  <p class="contact">   <label for="UserName"><span style="font-weight:bold"><em style="color:red">*</em>UserName</span></label>
                <input type="text" name="user" size="50"  >
              </p>
              
              
            <p class="contact">   <label for="Password"><span style="font-weight:bold"><em style="color:red">*</em>Password</span></label> 
    	      <input type="password" name="pass" size="50"  >
              </p>
              
...............................................................................................................................................................................
                 
                 
                 <p class="contact">
                <input type="checkbox" name="AndroidApps" value=1><label for="AndroidApps"><span style="font-weight:bold">AndroidApps</span></label><br>
                <input name="AndroidApps" type="hidden" value=0 />
		</p>
                 
                 

 <p class="contact">
                <input type="checkbox" name="WebApps" value=1><label for="WebApps"><span style="font-weight:bold">WebApps</span></label><br>
                <input name="WebApps" type="hidden" value=0 />
	        </p>




     <p class="contact"><input type="checkbox" name="Email" value="1"onchange="document.getElementById('emailid').disabled=!this.checked;"><label for="comment"><span style="font-weight:bold">EmailService</span></label>
                <input name="Email" type="hidden" value="0" />
                <input type=email name="emailid"id="emailid"disabled="disabled" required size="45"  >
				</p>

				
				
                <p class="contact"><input type="checkbox" name="sms" value="1"onchange="document.getElementById('mobnum').disabled=!this.checked;"><label for="comment"><span style="font-weight:bold">SmsService</span></label>
                <input name="sms" type="hidden" value="0" />
                 <input type=tel name="mobnum"id="mobnum"disabled="disabled"  required onKeyUp="isValidChar(this.value);" size="45">
                 </p>

...............................................................................................................................................................................
                 <p class="contact"><label for="StartDate"><span style="font-weight:bold"><em style="color:red">*</em>StartDate</span></label> 
              <input type="Text" id="demo1" name="sdate"maxlength="25" size="25"><a href="javascript:NewCal('demo1','ddmmmyyyy',true,24)"><img src="cal.gif" width="16" height="16" border="0" alt="Pick a date"></a>
                  
                 </p>
                
                 
                 
                 <p class="contact"><label for="ExpireDate"><span style="font-weight:bold">ExpireDate</span></label> 
                  <input type="Text" id="demo2" name="edate"maxlength="25" size="25" value="0001-00-00 00:00:00 "><a href="javascript:NewCal('demo2','ddmmmyyyy',true,24)"><img src="cal.gif" width="16" height="16" border="0" alt="Pick a date"></a>
                 </p>
                 
      ...............................................................................................................................................................................            

                 <p class="contact">
                <input type="checkbox" name="PaymentCheck" value="1" onChange="document.getElementById('payment').disabled=!this.checked;"><label for="comment"><span style="font-weight:bold">Payment</span></label>
                 <input name="PaymentCheck" type="hidden" value="0" />
                <input type=text name=payment id="payment"disabled="disabled"  required size="45">
                 </P>
                 
                 
                 
                
                 
                 
	         
                 
                 <p class="contact"><label for="comment"> <span style="font-weight:bold">DanReresen</span></label>
                 <input type="text" name="dan" size="50" >
				 </p>



    
<em style="color:red">*</em> is Mandatory fields
                <div style="text-align:center">  
		<input name="submit" id="submit" tabindex="10" id="b1"value="INSERT" align="middle"type="submit">
                </div>
   
   </div>
   <div id="footer">
   </div>
   </div>
    </form>
      <div style="text-align:center"> 
                 <input name="submit" id="submit" tabindex="7" value="UPDATE" type="submit"onClick="window.location.href='AutoComplete.jsp'"> <input name="submit" id="submit" tabindex="5" value="DELETE" type="submit"onClick="window.location.href='jspDelete.jsp'">			
              </div> 
   </body>
  
   </html>