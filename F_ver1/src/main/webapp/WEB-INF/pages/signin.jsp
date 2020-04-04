<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"  %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign In to KH</title>
<style type="text/css">
 body{
 
  background-repeat:no-repeat;
  background-size:cover;
  background-image: url("<c:url value="/resources/images/indeximage.jpg"></c:url>");
  color:white;
  font-family:verdana;
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
		h3{
		  text-align:center;
		  padding:10px;
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
	   a{
           text-decoration:none;
 
        }
        #b1{
        background-color:#00cccc;
           color:white;
        }
        #b2{
           background-color:#00cccc;
           color:white;
           text-align: right; 
           
        }


</style>
</head>
<body>
   <div>
     <h3>SIGN IN TO KR HOSPITALS</h3>
    <form:form id="signinform" modelAttribute="signinModel" action="signindn" method="post">
       <table>
         <tr>
             <td  id="label">Mobile:</td> 
             <td><form:input path="mobile" type="text"/></td>      
         </tr> 
          <tr>
             <td>Name:</td> 
             <td><form:input path="name" type="text"/></td>      
         </tr> 
          <tr>
             <td>Password:</td> 
             <td><form:input path="password" type="password"/></td>      
         </tr> 
         <tr>
           <td><input id="b1" type="reset" value="RESET"></td>
           <td><input id="b1" type="submit" value="SIGN IN"></td>
         </tr>
         <tr>
            <td></td>
            <td> <a href="newuser" id="b2">NEW USER</a></td>
         </tr>
       </table>
    </form:form>
       
    
     <h3>${msg}</h3>
</div>


</body>
</html>