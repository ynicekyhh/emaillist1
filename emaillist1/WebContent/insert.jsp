<%@page import="com.bigdata2017.emaillist.dao.EmaillistDao"%>
<%@page import="com.bigdata2017.emaillist.vo.EmaillistVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding( "UTF-8" );

	String firstName = request.getParameter( "fn" );
	String lastName = request.getParameter( "ln" );
	String email = request.getParameter( "email" );
	
	EmaillistVo vo = new EmaillistVo();
	vo.setFirstName(firstName);
	vo.setLastName(lastName);
	vo.setEmail(email);
	
	new EmaillistDao().insert(vo);
	
	// /index.jsp는 web.xml에 기본세팅되어있으니 생략!
	response.sendRedirect( request.getContextPath() );
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>성공</h1>
	<a href="<%=request.getContextPath() %>/index.jsp">리스트 돌아가기</a>
</body>
</html>