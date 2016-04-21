<!-- 
http://www.tutorialspoint.com/jsp/jsp_standard_tag_library.htm
http://www.apekshit.com/JSTL-Tutorial-for-beginners-with-Example/c/26
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:url value="/curlTest" />
	<br>
	<br>

	<c:forEach items="${empList}" var="emp">
		<div>
			<c:out value="${emp.id}"></c:out>
		</div>
		<div>
			<c:out value="${emp.name}"></c:out>
		</div>
		<div>
			<c:out value="${emp.role}"></c:out>
		</div>
	</c:forEach>
	<br>
	<br>


	<c:forEach var="number" begin="5" end="10">
		<c:out value="${number }"></c:out>
	</c:forEach>
	<br>
	<br>


	<c:if test="${htmlTagData ne null }">
		<c:out value="${htmlTagData}" escapeXml="true"></c:out>
	</c:if>
	<br>
	<br>


	<c:set var="id" value="5" scope="request"></c:set>
	<c:out value="${id }"></c:out>
	<br>
	<br>


	<a href='<c:url value="${url }"/>'>link </a>
	<br>
	<br>


	<%-- <c:redirect url="http://www.google.com"></c:redirect> --%>
	<br>
	<br>

	<c:catch var="catchException">
		<%
			int x = 5 / 0;
		%>
	</c:catch>

	<c:if test="${catchException != null}">
		<p>
			The exception is : ${catchException} <br /> There is an exception: ${catchException.message}
		</p>
	</c:if>
	<br>
	<br>

	<c:set var="salary" value="${2000 * 2 }" />
	<c:choose>
		<c:when test="${ salary <= 0 }">
		salary is very low
	</c:when>
		<c:when test="${ salary > 1000 }">
		salary is very good
	</c:when>
		<c:otherwise>
		No comments
	</c:otherwise>
	</c:choose>
	<br>
	<br>


	<c:forTokens items="Zara,nuha,roshy" delims="," var="name">
		<c:out value="${name }" />
	</c:forTokens>
	<br>
	<br>


	<c:url value="/jstlImport" var="myURL">
		<c:param name="trackingId" value="1234" />
		<c:param name="reportType" value="summary" />
	</c:url>
	<c:out value="${myURL}" />
	<br>
	<br>

	<h3>Number Format:</h3>
	<c:set var="balance" value="120000.2309" />
	<p>
		Formatted Number (1):
		<fmt:formatNumber value="${balance}" type="currency" />
	</p>
	<p>
		Formatted Number (2):
		<fmt:formatNumber type="number" maxIntegerDigits="3" value="${balance}" />
	</p>
	<p>
		Formatted Number (3):
		<fmt:formatNumber type="number" maxFractionDigits="3" value="${balance}" />
	</p>
	<p>
		Formatted Number (4):
		<fmt:formatNumber type="number" groupingUsed="false" value="${balance}" />
	</p>
	<p>
		Formatted Number (5):
		<fmt:formatNumber type="percent" maxIntegerDigits="3" value="${balance}" />
	</p>
	<p>
		Formatted Number (6):
		<fmt:formatNumber type="percent" minFractionDigits="10" value="${balance}" />
	</p>
	<p>
		Formatted Number (7):
		<fmt:formatNumber type="percent" maxIntegerDigits="3" value="${balance}" />
	</p>
	<p>
		Formatted Number (8):
		<fmt:formatNumber type="number" pattern="###.###E0" value="${balance}" />
	</p>
	<p>
		Currency in USA :
		<fmt:setLocale value="en_US" />
		<fmt:formatNumber value="${balance}" type="currency" />
	</p>

	<fmt:parseNumber var="i" type="number" value="${balance}" />
	<p>
		Parsed Number (1) :
		<c:out value="${i}" />
	</p>
	<fmt:parseNumber var="i" integerOnly="true" type="number" value="${balance}" />
	<p>
		Parsed Number (2) :
		<c:out value="${i}" />
	</p>

	<c:set var="now" value="<%=new java.util.Date()%>" />

	<p>
		Formatted Date (1):
		<fmt:formatDate type="time" value="${now}" />
	</p>
	<p>
		Formatted Date (2):
		<fmt:formatDate type="date" value="${now}" />
	</p>
	<p>
		Formatted Date (3):
		<fmt:formatDate type="both" value="${now}" />
	</p>
	<p>
		Formatted Date (4):
		<fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${now}" />
	</p>
	<p>
		Formatted Date (5):
		<fmt:formatDate type="both" dateStyle="medium" timeStyle="medium" value="${now}" />
	</p>
	<p>
		Formatted Date (6):
		<fmt:formatDate type="both" dateStyle="long" timeStyle="long" value="${now}" />
	</p>
	<p>
		Formatted Date (7):
		<fmt:formatDate pattern="yyyy-MM-dd" value="${now}" />
	</p>

	<c:set var="now" value="20-10-2010" />

	<fmt:parseDate value="${now}" var="parsedEmpDate" pattern="dd-MM-yyyy" />
	<p>
		Parsed Date:
		<c:out value="${parsedEmpDate}" />
	</p>


	<c:set var="theString" value="I am a test String" />

	<c:if test="${fn:contains(theString, 'test')}">
		<p>Found test string
		<p>
	</c:if>

	<c:if test="${fn:contains(theString, 'TEST')}">
		<p>Found TEST string
		<p>
	</c:if>

	<c:if test="${fn:containsIgnoreCase(theString, 'test')}">
		<p>Found test string
		<p>
	</c:if>

	<c:if test="${fn:containsIgnoreCase(theString, 'TEST')}">
		<p>Found TEST string
		<p>
	</c:if>

	<c:if test="${fn:endsWith(theString, '123')}">
		<p>String ends with 123
		<p>
	</c:if>

	<c:if test="${fn:endsWith(theString, 'TEST')}">
		<p>String ends with TEST
		<p>
	</c:if>

	<c:set var="string1" value="This is first String." />
	<c:set var="string2" value="This <abc>is second String.</abc>" />

	<p>With escapeXml() Function:</p>
	<p>string (1) : ${fn:escapeXml(string1)}</p>
	<p>string (2) : ${fn:escapeXml(string2)}</p>

	<p>Without escapeXml() Function:</p>
	<p>string (1) : ${string1}</p>
	<p>string (2) : ${string2}</p>

	<p>Index (1) : ${fn:indexOf(string1, "first")}</p>
	<p>Index (2) : ${fn:indexOf(string2, "second")}</p>

	<c:set var="string4" value="This is first String." />
	<c:set var="string5" value="${fn:split(string4, ' ')}" />
	<c:set var="string6" value="${fn:join(string5, '-')}" />

	<p>Final String : ${string6}</p>

	<p>Length of String (1) : ${fn:length(string1)}</p>
	<p>Length of String (2) : ${fn:length(string2)}</p>

	<c:set var="string7" value="${fn:replace(string1, 
                                'first', 'second')}" />

	<p>Final String : ${string7}</p>

	<c:set var="string9" value="Second: This is first String." />
	<c:if test="${fn:startsWith(string9, 'First')}">
		<p>String starts with First</p>
	</c:if>
	<br />
	<c:if test="${fn:startsWith(string9, 'Second')}">
		<p>String starts with Second</p>
	</c:if>

	<c:set var="string10" value="This is first String." />
	<c:set var="string11" value="${fn:substring(string10, 5, 15)}" />

	<p>Final sub string : ${string11}</p>

	<c:set var="string12" value="This is first String." />
	<c:set var="string13" value="${fn:substringAfter(string12, 'is')}" />

	<p>Final sub string : ${string13}</p>

	<c:set var="string14" value="This is first String." />
	<c:set var="string15" value="${fn:substringBefore(string14, 
                                            'first')}" />

	<p>Final sub string : ${string15}</p>

	<c:set var="string16" value="This is first String." />
	<c:set var="string17" value="${fn:toLowerCase(string16)}" />

	<p>Final string : ${string17}</p>

	<c:set var="string18" value="This is first String." />
	<c:set var="string19" value="${fn:toUpperCase(string18)}" />

	<p>Final string : ${string19}</p>

	<c:set var="string20" value="This is first String         " />
	<p>String (1) Length : ${fn:length(string20)}</p>

	<c:set var="string21" value="${fn:trim(string20)}" />
	<p>String (2) Length : ${fn:length(string21)}</p>
	<p>Final string : ${string21}</p>

</body>
</html>