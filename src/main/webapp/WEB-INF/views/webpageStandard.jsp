<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<!--[if lte IE 9]>
  <script>
    location.replace('http://static.ridibooks.com/sorry/end_support_ie.html');
  </script>
<![endif]-->
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta charset="utf-8"/>
<meta name="format-detection" content="telephone=no, address=no, email=no" /><!-- http://kipepeo.tistory.com/19  -->
<link rel="canonical" href="http://www.audien.com" /><!--  http://www.seo-korea.com/%ED%91%9C%EC%A4%80-%ED%8E%98%EC%9D%B4%EC%A7%80-%EC%84%A4%EC%A0%95-link-rel-canonical/ -->
<meta name="theme-color" content="#4285f4" /><!-- https://developers.google.com/web/fundamentals/design-and-ui/browser-customization/theme-color  -->
<link rel="apple-touch-icon" sizes="57x57" href="http://www.audien.com/images/etc/loggo_top.gif?160401">
<link rel="apple-touch-icon" sizes="60x60" href="http://www.audien.com/images/etc/loggo_top.gif?160401">
<link rel="apple-touch-icon" sizes="72x72" href="http://www.audien.com/images/etc/loggo_top.gif?160401">
<link rel="apple-touch-icon" sizes="76x76" href="http://www.audien.com/images/etc/loggo_top.gif?160401">
<link rel="apple-touch-icon" sizes="114x114" href="http://www.audien.com/images/etc/loggo_top.gif?160401">
<link rel="apple-touch-icon" sizes="120x120" href="http://www.audien.com/images/etc/loggo_top.gif?160401">
<link rel="apple-touch-icon" sizes="144x144" href="http://www.audien.com/images/etc/loggo_top.gif?160401">
<link rel="apple-touch-icon" sizes="152x152" href="http://www.audien.com/images/etc/loggo_top.gif?160401">
<link rel="apple-touch-icon" sizes="180x180" href="http://www.audien.com/images/etc/loggo_top.gif?160401">
<link rel="shortcut icon" href="http://static.ridibooks.com/books/images/favicon/ridibooks.ico"><!-- (favicon)  http://webdir.tistory.com/337  -->
<script src="${pageContext.request.contextPath}/resources/js/basic/require.js"></script>
<script>
var AUDIEN = AUDIEN || {};
AUDIEN.globals = {
		  isLogIn: false,
		  userId: '',
		  userEmail: '',
		  isPc: true,
		  isMobile: false,
		  isApp: false,
		  baseUrl: '//www.audien.com',
		  sslHost: 'https://www.audien.com'
		};
	
	console.log(AUDIEN.globals.isLoggedIn);
	
	//requireJS 기본 설정 부분
	requirejs.config({
	/*
	    baseUrl:
	    JavaScript 파일이 있는 기본 경로를 설정한다.
	    만약 data-main 속성이 사용되었다면, 그 경로가 baseUrl이 된다.
	    data-main 속성은 require.js를 위한 특별한 속성으로 require.js는 스크립트 로딩을 시작하기 위해 이 부분을 체크한다.
	*/
	    baseUrl: '${pageContext.request.contextPath}/resources/js/extends',  

	/*
	    paths: 
	    path는 baseUrl 아래에서 직접적으로 찾을 수 없는 모듈명들을 위해 경로를 매핑해주는 속성이다.
	    "/"로 시작하거나 "http" 등으로 시작하지 않으면, 기본적으로는 baseUrl에 상대적으로 설정하게 된다.

	    paths: {
	        "exam": "aaaa/bbbb"
	    }

	    의 형태로 설정한 뒤에, define에서 "exam/module" 로 불러오게 되면, 스크립트 태그에서는 실제로는 src="aaaa/bbbb/module.js" 로 잡을 것이다.
	    path는 또한 아래와 같이 특정 라이브러리 경로 선언을 위해 사용될 수 있는데, path 매핑 코드는 자동적으로 .js 확장자를 붙여서 모듈명을 매핑한다.
	*/
	    paths:{
	        //뒤에 js 확장자는 생략한다.
	        'jquery': 'jquery-2.2.3.min',
	    },

	/*
	    shim:
	    AMD 형식을 지원하지 않는 라이브러리의 경우 아래와 같이 shim을 사용해서 모듈로 불러올 수 있다.
	    참고 : http://gregfranko.com/blog/require-dot-js-2-dot-0-shim-configuration/
	*/
	    shim:{
	        'angular':{
	            deps: ['jquery'], //angular가 로드되기 전에 jquery가 로드 되어야 한다.
	            exports:'angular' //로드된 angular 라이브러리는 angular 라는 이름의 객체로 사용할 수 있게 해준다
	        }
	    }
	});


</script>

</head>
<body>

test
</body>
</html>
