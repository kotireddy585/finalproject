<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
 <!--   <link href='<c:url value="/resources/css/StyleIndex1.css"></c:url>' rel="stylesheet">-->
<title>KH at your service</title>
<style type="text/css">
 body{
 
  background-repeat:no-repeat;
  background-size:cover;
  background-image: url("<c:url value="/resources/images/indeximage.jpg"></c:url>");
  color:white;
  font-family:verdana;
  }
  
#logo{
    position:absolute;
    float:left;
   width:150px;
   height:150px;
   background-image: url("<c:url value="/resources/images/logo150.jpg"></c:url>");
  
}  
#mainheading{
background-color:#00cccc;
margin:10px;
padding-top:20px;
padding-bottom:20px;
padding-left:160px;
border-radius:5px;
font-family:verdana;
}

#signinb,#signupb,#bookappb,#appstatusb{
background-color:#00cccc;
border:none;
margin:3px;
padding: 15px;
border-radius:3px;
color:white;
}

a{
 text-decoration:none;
 
}
#msgbox{
    float:left;
    margin-top:5%;
    margin-left:40%;
    background-color:#00cccc;
    color:white;
    
}
#buttonline{
  margin:0px;
  float:right;
}

</style>
</head>
<body>

<div id="logo">
   <!--  <img alt="" src="<c:url value="/resources/images/logo.jpg"></c:url>"/>-->
</div>
    <h1 id="mainheading">KALATHURU HOSPITALS</h1>
    <div id="buttonline">
     <a href="signindn" method="post"><button id="bookappb">HOME</button></a>
     <a href="bookappb"><button id="bookappb">BOOK APPOINTMENT</button></a>
     <a href="appstatusb"><button id="appstatusb">APPOINTMENT STATUS</button></a>
     <a href="signedhome"><button id="signinb"><marquee>WELCOME <c:out value="${pat.name }"></c:out></marquee></button></a>
     <a href="home"><button id="signupb">LOG OUT</button>
    </div>
</body>
</html>