<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
	session.setAttribute("test", "Session Test");

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>EL ���尴ü ��뿹��</title>
</head>
<body>
<form action="el_test2.jsp" method = "post">
<table border="1">
<tr><td>�̸�:</td><td><input type = "text" name="name" value = "ȫ�浿"></td></tr>
<tr><td colspan ="2"><input type = "submit" value = "�Է�"/> </td></tr>

</table>

</form>
</body>
</html>