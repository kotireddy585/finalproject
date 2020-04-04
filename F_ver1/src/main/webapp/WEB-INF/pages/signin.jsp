<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"  %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign In to KH</title>
</head>
<body>
    <form:form id="signinform" modelAttribute="signinModel" action="signindn" method="post">
       <table>
         <tr>
            <td><h3>SIGN IN TO KR HOSPITALS</h3>
         </tr>
         <tr>
             <td>Mobile:</td> 
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
           <td><input type="reset" value="RESET"></td>
           <td><input type="submit" value="SIGN IN"></td>
         </tr>
       </table>
    
    
    
    </form:form>
    
     <h4>${msg}</h4>



</body>
</html>