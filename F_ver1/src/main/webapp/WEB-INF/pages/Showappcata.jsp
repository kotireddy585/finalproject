<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"  %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
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
input,select,option{
		padding:7px;
		border-radius:3px;
		border:none;
		color:black;
		background-color:#ccffff;
		}
		h3{
		   margin:0px;
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
	


</style>
<meta charset="ISO-8859-1">
<title>KH Appointement</title>
</head>
<body>
   <div>
      <h3>Welcome <c:out value="${cata.name}"></c:out></h3>
        <h3>Book Appointment </h3>
        <form:form id="u" modelAttribute="cata" method="post" action="createapp">
         <table>
		   <tr>
	       <td>Mobile Number:</td>
		   <td><form:input path="mobile" type="text" placeholder="${cata.mobile}"/></td>
		   <td id="err"><form:errors path="mobile" cssClass="error"></form:errors></td>
		 </tr>
         <tr>
	      <td>Name:</td>
          <td><form:input path="name" type="text"  placeholder="${cata.name}"/></td>
         <td id="err"><form:errors path="name" cssClass="error"></form:errors></td>
         </tr>
	    <tr>
	       <td>Email:</td>
           <td><form:input path="email" type="email"  placeholder="${cata.email}"/></td>
          <td id="err"><form:errors path="email" cssClass="error"></form:errors></td>
	    </tr>
	     <tr>
	       <td>Age:</td>
           <td><form:input path="age" type="number"  placeholder="${cata.age}"/></td>
          <td id="err"><form:errors path="age" cssClass="error"></form:errors></td>
	    </tr>
	    <tr>
	       <td>select a doctor </td> 
	       <td><form:select path="doctor">
		 	<form:option value="">Select Doctor </form:option>	
		 	<form:option value="K.Mahesh">K.Mahesh</form:option>
			<form:option value="M.G.Babu">M.G.Babu</form:option>
			<form:option value="P.Pushpi">P.Pushpi</form:option>
			<form:option value="M.ManiKanta">M.ManiKanta</form:option>
			</form:select></td>
	    </tr>
	     <tr>
	       <td>select a Slot </td> 
	       <td><form:select path="slot">
		 	<form:option value="">Select A Slot </form:option>
		 	<form:option value="Morning">Morning</form:option>
		 	<form:option value="Afternoon">Afternoon</form:option>
		 	<form:option value="Evening">Evening</form:option>	
		 	</form:select></td>
	    <tr>
	      <td><input type="submit" value="Book Appointment"></td> 
	    </tr>
      </table>
      </form:form>
   
   
   
   </div>
</body>
</html>