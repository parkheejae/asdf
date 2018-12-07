<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@	page import ="dao.Database"  %>
     <%@ page import ="vo.UserRec" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>loginResult</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script type="text/javascript">
	$(function() {
		
	});
	</script>
</head>
<body bgcolor="blue">
<%		String name="";
		int userLevel=0;
		Database db = Database.getInstance();
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		UserRec user = db.logIn(id,password);
		name = user.getName();
		userLevel = user.getUserLevel();
		
		session.setAttribute("user",user);
		
		
		response.sendRedirect("./login_result.jsp");
		
		
	
%>


	

</body>
</html>