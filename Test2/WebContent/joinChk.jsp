<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR"); %>
<jsp:useBean id="join" class="JoinBean" scope="page"/>
<jsp:setProperty property="*" name="join"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȸ������ �Է� ���� Ȯ�� ������</title>
</head>
<body>
<center>
<table border="1">
<tr>
<td align="right" bgcolor="yellow"><font size ="2">���̵�:</font></td>
<td bgcolor="yellow"><jsp:getProperty name ="join" property="id"/></td>
</tr>
<tr>
<td align="right" bgcolor="yellow"><font size ="2">��й�ȣ:</font></td>
<td bgcolor="yellow"><jsp:getProperty name ="join" property="pass"/></td>
</tr>
<tr>
<td align = "right" bgcolor="yellow"><font size= "2">�̸�:</font></td>
<td bgcolor="yellow" ><jsp:getProperty name ="join" property="name"/></td>
</tr>
<tr>
<td align = "right" bgcolor="yellow"><font size ="2">����:</font></td>
<td bgcolor ="yellow">
<jsp:getProperty name ="join" property="sex"/>
</td>
</tr>
<tr>
<td align ="right" bgcolor="yellow"><font size ="2">����:</font></td>
<td bgcolor="yellow"><jsp:getProperty name ="join" property="age"/></td>
</tr>
<tr>
<td align ="right" bgcolor="yellow"><font size="2">�̸����ּ�:</font></td>
<td bgcolor ="yellow" ><jsp:getProperty name ="join" property="email"/></td>
</tr>

</table>





</center>
</body>
</html>