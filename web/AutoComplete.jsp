<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Upload Page</title>

<link rel="stylesheet" type="text/css" href="hicourt.css"/>
<link rel="stylesheet" type="text/css" href="style.css" />
	<script type="text/javascript" src="jquery-1.4.2.min.js"></script>
	<script src="jquery.autocomplete.js"></script>	
	
	<script>
	jQuery(function(){
		$("#id").autocomplete("list.jsp");
	});
   </script>
<script language="javascript" type="text/javascript">



</script>



<body onLoad="randomString()">
  <form name="f1" method="post"  action="search1.jsp"> 
   <div id="wrapper">
   
   <div id="banner">
   
   </div>
   <div  id="navigation" align="center">
 Search Registration Number
   
   </div>
   
   <div id="content_area">
   
   
 
       <p class="contact"><label for="name"><span style="font-weight:bold">EDIT</span></label> 
    			<input id="id" name="id" placeholder="Advocate Reg Number" required=""  type="text"> 
    			 </p>

	<div style="text-align:center">  
     <input name="submit" id="submit" tabindex="10" value="EDIT"type="submit">
	  </div>   </div>
   
  
   <div id="footer">
   </div>
   </div>
   
   
       
   </form>
   </body>
   </html>