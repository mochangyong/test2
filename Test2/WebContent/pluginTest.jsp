<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Plugin Action Test</title>
</head>
<body>
<h2>플러그인 액션 테스트</h2>
<jsp:plugin type ="applet" codebase="./" code="PluginTest" width="100" height="100">
	<jsp:params>
			<jsp:param value="hongkildong" name="name"/>
	</jsp:params>
	<jsp:fallback>플러그인 태그를 지원하지 않습니다.</jsp:fallback>
	
	</jsp:plugin>
</body>
</html>