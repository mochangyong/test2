<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="javax.naming.*" %>
<%
	Connection con = null;
	String sql="INSERT INTO student(num,name)VALUES(?,'ȫ�浿')";
	
	try{
		Context init = new InitialContext();
		DataSource ds = (DataSource)init.lookup("java:comp/env/ddbc/OracleDB");
		con = ds.getConnection();
		PreparedStatement stmt =con.prepareStatement(sql);
		
		for(int i = 7; i <=10; i++){
			stmt.setInt(1, i);
			if(stmt.executeUpdate()!=0){
				out.println("<h3>+i+ �� ���ڵ带 ����Ͽ����ϴ�.</h3>");
			}
		}
		}catch(Exception e){
			out.println("<h3>+i+ �� ���ڵ� ��Ͽ� �����Ͽ����ϴ�.</h3>.");
			e.printStackTrace();
		}
		
	

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>