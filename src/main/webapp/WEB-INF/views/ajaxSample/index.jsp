<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="${pageContext.request.contextPath}/resources/js/basic/require.js"></script>
<script type="text/javascript">
/*  

DTD 설명
https://github.com/nhnent/fe.javascript/wiki/DTD

Ajax Template Example

var jqxhr = $.ajax({
    url: url,
    type: 'GET',             // default is GET but you can use other verbs based on your needs
    cache: true,             // default is true, but false for dataType 'script' and 'jsonp', so set it on need basis 
    data: {},                // add your request parameters in the data object
    dataType: 'json',        // specify the dataType for future reference
    jsonp: 'callback',       // only specify this to match the name of callback parameter your API is expecting for JSONP requests
    statusCode: {            // if you want to handle specific error codes, use the status code mapping settings
        404: handler404,
        500: handler500
    }
});
jqxhr.done(successHandler);
jqxhr.fail(failureHandler); 
 
 */


	requirejs.config({
		baseUrl : '${pageContext.request.contextPath}/resources/js/extends',
		paths : {
			'jquery' : 'jquery-2.2.3.min',
		},
	});

	require([ 'jquery' ], function($) {
		$(function() {
			//alert("jquery module is load")
		});
		
		$(document).ready(function(){
			$("#makeJsonString").click(function(){
				
				/* 
				http body add
				{"name":"자기계발","age":"10"}
				*/
				
				$.ajax({ 
					type: "POST", 
					url: "${pageContext.request.contextPath}/ajaxHandler/jsonSimpleGet", 
					data:"{\"name\":\"자기계발\",\"age\":\"10\"}",
					dataType: "text", 
					contentType: "application/json", 
					//beforeSend: function(req) { req.setRequestHeader("Accept", "application/x-www-form-urlencoded"); }, 
					success: function(text) { printJson(text)  }, 
					error: function(xhr) { alert(xhr) }
					});	
				return false;
			});
			$("#makeJsonObject").click(function(){
				var sitePerson={}
				sitePerson.name="test";
				sitePerson.age="jobtest"
				var jsonStr  = JSON.stringify(sitePerson);
				
				console.log(sitePerson);	// javascript object
				console.log(jsonStr);		// string
				
				/* 
				
				javascript객체를 직접 data:에 넣으면 쿼리 스트링으로 변환 후 들어간다.
				http body add
				name=test&job=jobtest
				
				JSON.stringify으로 변환 후 호출하면 아래와 같이 스트링 문자열로 변환된다. 
				{"name":"test","age":"jobtest"}
				*/
				
 				$.ajax({
				        //type:"GET",
				        type:"POST",
				        url: "${pageContext.request.contextPath}/ajaxHandler/jsonSimpleGet",
				        data:jsonStr,
				        dataType: "text",
				        contentType: "application/json",
				        success: function(text) { printJson(text)  }, 

				});
				
				return false;
				
			});
			
			$("#makeJsonArray").click(function(){
				var sitePerson={}
				var employees=[];
				sitePerson.employees= employees;
				
				for(var i=0; i < 2; i++){
					var employee={};
					employee.name="astral"+i;
					employee.age="3"+i;
					sitePerson.employees.push(employee);
				}
				
				console.log(sitePerson);
				// employees[0][name]=astral&employees[0][job]=3&employees[1][name]=jhon&employees[1][job]=111
				console.log(JSON.stringify(sitePerson));
				// {"employees":[{"name":"astral","age":"3"},{"name":"jhon","age":"111"}]}
				
				$.ajax({
				        type:"POST",
				        url: "${pageContext.request.contextPath}/ajaxHandler/jsonArrayGet",
				        data:JSON.stringify(sitePerson),
				        dataType: "text",
				        contentType: "application/json",
				        success: function(text) { printJson(text)  }, 
				});
				return false;
				
			});
			
			function printJson(text){
				$("#printJSON").text(text);
				var toObj = JSON.parse(text);
				console.log("toObj.name["+toObj.name+"]toObj.age["+toObj.age+"]")
			}
		});
	});
</script>
</head>
<body>
<input type="button" name="makeJsonString" id="makeJsonString" value="makeJsonString"><br>
<input type="button" name="makeJsonObject" id="makeJsonObject" value="makeJsonObject"><br>
<input type="button" name="makeJsonArray" id="makeJsonArray" value="makeJsonArray"><br>

<br><br>
result:<br>
print String<br>
<div id="printJSON"></div>


</body>
</html>