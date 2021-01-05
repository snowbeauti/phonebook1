<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.List"%>
<%@ page import="com.javaex.vo.PersonVo"%>
<%@ page import="com.javaex.dao.PhoneDao"%>


<%
	//http://localhost:8088/phonebook1/insert.jsp?name=조설아&hp=010-1111-1111&company=02-1111-1111
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");

	PersonVo personVo = new PersonVo(name, hp, company);

	PhoneDao phoneDao = new PhoneDao();

	/*저장*/
	phoneDao.personInsert(personVo);


	response.sendRedirect("./list.jsp");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



	<a href="./writeForm.jsp">추가번호 등록</a>
</body>
</html>