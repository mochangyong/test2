<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSTL core ���̺귯�� ��� ���� 2</title>
</head>
<body>
<c:forEach var="test" begin ="1" end ="10" step="2">
	<b>${test}</b>&nbsp;

</c:forEach>
<br>
<c:forTokens var="alphabet" items="a,b,c,d,e,f,g,h,i,j,k,l,m,n" delims=",">
	<b>${alphabet}</b>&nbsp;
</c:forTokens>
<br>
<c:set var="data" value="ȫ�浿,��浿,��浿"/>
<c:forTokens var="varData" items="${data}" delims=",">
	<b>${varData}</b>&nbsp;
</c:forTokens>
</body>
</html>