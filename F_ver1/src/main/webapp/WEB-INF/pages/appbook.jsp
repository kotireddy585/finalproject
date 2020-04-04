<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"  %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  
   
   <c:out value="peace bro"></c:out>
   <h1>BOOK APPOINTMENT</h1>
   <form:form action="appbook1" method="post" modelAttribute="bookatt" id="formbookapp"> 
   
     <div>
      <table>
         <tr>
           <td>Mobile:</td>
           <td><form:input path="mobile" type="text"/></td>
         </tr>
         <tr>
           <td>Go For Booking</td>
           <td><input type="submit" value="yes"></td>
         </tr>
      </table>
    
     </div>
     
   </form:form>
</body>
</html>