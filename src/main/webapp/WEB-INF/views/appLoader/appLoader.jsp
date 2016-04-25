<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
</head>
<body>
    <p>App loader run in mobile.</p>
    <div>
        <button id='loaderBtn'>load</button>
    </div>
    <div>
        <a href="https://itunes.apple.com/kr/app/id924292102"><button>Go to app store!</button></a>
    </div>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/appLoader/code-snippet.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/appLoader/app-loader.js"></script>
    <script type="text/javascript">
        var iosScheme = 'iaudienb2b://';
//        var intentURI = 'intent://open#Intent;scheme=payco;S.browser_fallback_url=http%3A%2F%2Fwww.payco.com;package=com.nhnent.payapp;end';
//        var intentURI = 'intent://open#Intent;scheme=payco;package=com.nhnent.payapp;end;';
        var intentURI = 'iaudienb2b://';
        var AppLoader = tui.component.m.AppLoader;

        var loader = new AppLoader(),
            btn = document.getElementById('loaderBtn');

        btn.addEventListener('click', function() {
            loader.exec({
                ios: {
                    scheme: iosScheme,
                    url: "https://itunes.apple.com/kr/app/id924292102",
                    useIOS9: true,
                    syncToIOS9 : false
                },
                android: {
                    intentURI: intentURI
                },
                timerSet: {
                    ios: 2000,
                    android: 1000
                },
                etcCallback: function() {
                    if (AppLoader.getOS() === 'iOS' || AppLoader.getOS() === 'Android') {
                        alert(AppLoader.getUserAgent());
                        alert(AppLoader.getUserAgents().join(' '));
                        alert(AppLoader.getVersion(AppLoader.getOS()));
                        alert(AppLoader.getVersion(AppLoader.getUserAgent()));
                    } else {
                        alert('Run in mobile');
                    }
                },
                notFoundCallback: function() {
                    if (AppLoader.getOS() === 'iOS') {
                        top.location.href = 'https://itunes.apple.com/kr/app/id924292102';
                    }
                    console.log('Not Found Application');
                }
            });
        });
    </script>
</body>
</html>
