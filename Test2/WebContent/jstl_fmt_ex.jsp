<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id= "date" class="java.util.Date"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSTL fmt 라이브러리 사용 예제</title>
</head>
<body>

<fmt:setLocale value="ko_KR"/>
<fmt:bundle basename="test">
	<fmt:message key ="name"/><br>
	<fmt:message key = "say"/><br>
	<fmt:message key ="say2" >
			<fmt:param value = "고길동" />
	</fmt:message>
</fmt:bundle>

<p>
<fmt:formatNumber value="50000" type ="currency"/><br>
<fmt:formatNumber value="0.15" type = "percent" /><br>
<fmt:formatNumber value = "500567300" pattern="###,###,###"/></p>

<p>
<fmt:formatDate value="${date}" type ="date"/><br>
<fmt:formatDate value="${date}" type= "time"/><br>
<fmt:formatDate value="${date}" type= "both"/></p>

<fmt:formatDate value="${date}" type="both" timeStyle="short" dateStyle="short"/><br>
<fmt:formatDate value="${date}" type="both" timeStyle="long" dateStyle="long"/><br>


</body>
</html>