<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"  %>
<%@ page isELIgnored="false" %>
<html>
 <head>
	<title>KH at your service</title>
	<style type="text/css">
		body{
        font-family: verdana;
		 background-repeat:no-repeat;
         background-size:cover;
          background-image: url("<c:url value="/resources/images/indeximage.jpg"></c:url>");

     
	       }
		div{
		    float:right;
			color: white;
			background-color:#00cccc;
			margin-right:40%;
			margin-top:10%;
			border:none;
			border-radius:5px;
		}
		td{
		text-align: right;
		  padding:7px;
		  color:white;
		}
		input{
		padding:7px;
		border-radius:3px;
		border:none;
		color:black;
		background-color:#ccffff;
		}
		#inpsub,#res{
		  background-color:#00cccc;
		  color:white;
		}
		h3{
		  text-align:center;
		  padding:10px;
		}
		.error{
		  color:white;
		}
		#err{
		 text-align: left;
		}
	</style>
 </head>
  <body>
     <div>
       <h3>Patient Registration Form</h3>
      <form:form id="signupform" name="signupform" modelAttribute="patient" method="post" action="spdone">
       <table>
		 <tr>
	       <td>Mobile Number:</td>
		   <td><form:input path="mobile" type="text"/></td>
		   <td id="err"><form:errors path="mobile" cssClass="error"></form:errors></td>
		   
		 </tr>
		 
         <tr>
	      <td>Name:</td>
          <td><form:input path="name" type="text"/></td>
         <td id="err"><form:errors path="name" cssClass="error"></form:errors></td>
         </tr>
	    <tr>
	        <td>Password:</td>
	        <td><form:input path="password" type="password"/></td>
	       <td id="err"><form:errors path="password" cssClass="error"></form:errors></td>
	    </tr>
	    <tr>
	       <td>Email:</td>
           <td><form:input path="email" type="email"/></td>
          <td id="err"><form:errors path="email" cssClass="error"></form:errors></td>
	    </tr>
	     <tr>
	       <td>Age:</td>
           <td><form:input path="age" type="number"/></td>
          <td id="err"><form:errors path="age" cssClass="error"></form:errors></td>
	    </tr>
	    <tr>
	    	<td><input id="res" type="reset" value="RESET"></td>
	       <td><input id="inpsub" type="submit" value="SIGNUP"></td>
	    </tr>
	</table>
        
     </form:form>
    </div>
  </body>
</html>