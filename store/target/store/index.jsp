<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.donglu.carpark.model.SessionInfo"%>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<title>东陆停车场优惠系统</title>
<jsp:include page="inc.jsp"></jsp:include>
<%
	SessionInfo sessionInfo = (SessionInfo) session.getAttribute("sessionInfo");
	if (sessionInfo != null) { 
		request.getRequestDispatcher("/securityJsp/main.jsp").forward(request, response);
 	} else {
		request.getRequestDispatcher("/login.jsp").forward(request, response);
	} 
%>
</head>
<body>
</body>
</html>