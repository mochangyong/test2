<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="java.sql.*"%>
<%@ page import ="javax.sql.*"%>
<%@ page import ="javax.naming.*"%>
<%
 		Connection con= null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "INSERT INTO (num, name)VALUES(12,'ȫ�浿')";
		String sql2 =" select * from stdent where num=1";
		
		try{
			Context init = new InitialContext();
			DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/OracleDB");
			con=ds.getConnection();
			
		con.setAutoCommit(false);
		
		pstmt = con.prepareStatement(sql);
		pstmt.executeUpdate();
		pstmt.close();
		
		pstmt=con.prepareStatement(sql2);
		rs=pstmt.executeQuery();
		
		if(!rs.next()){
			con.rollback();
			out.println("<h3>������ ���Կ� ������ �߻��Ͽ� �ѹ��Ͽ����ϴ�.<h3>");
		}else{
			con.commit();
			out.println("<h3>������ ������ ��� �Ϸ�Ǿ����ϴ�..<h3>");
		}
		pstmt.close();
		con.setAutoCommit(true);
		}catch(Exception e){
			out.println("<h3>������ ���Կ� �����Ͽ����ϴ�.<h3>");
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