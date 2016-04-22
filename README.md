JSTL
Tiles3
JQuery2.x

## bower 사용하기
install nodejs
install git

add path
;%PROGRAMFILES(x86)%\Git\bin;%PROGRAMFILES(x86)%\Git\cmd


-- usage bower

maven이 pom.xml을 사용한다면 bower는 bower.json을 사용한다.

npm install -g bower

bower init

bower install jquery --save
bower uninstall jquery

설치된 라이브러리 확인
bower list

버전확인
bower info jquery

bower를 사용하여 설치된 라이브러리는 bower_components 폴더 아래에 생성되므로 사용이 불편합니다. 이러한 문제를 bower-installer를 사용하여 해결 할 수 있습니다.
npm install -g bower-installer

references
https://blog.outsider.ne.kr/933
http://www.talkdev.net/bower-%EC%82%AC%EC%9A%A9%ED%95%98%EA%B8%B0/

http://vnthf.github.io/blog/bower/
