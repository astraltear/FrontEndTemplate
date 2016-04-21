<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<P>  <a href='<c:url value="/jstlSample"></c:url>'>jstlSample</a> </P>
<P>  <a href='<c:url value="/tilesPage"></c:url>'>tilesPage</a> </P>
<P>  <a href='<c:url value="/wildCardTest"></c:url>'>wildCardTest</a> </P>
<P>  <a href='<c:url value="/tiles3Step"></c:url>'>tiles3Step</a> </P>
<P>  <a href='<c:url value="/webpageStandard"></c:url>'>webpageStandard</a> </P>


</body>
</html>
