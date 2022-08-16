<%@page import="test.todo.dao.TodoDao"%>
<%@page import="java.util.List"%>
<%@page import="test.todo.dto.TodoDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	TodoDao dao = TodoDao.getInstance();
	List<TodoDto> list = dao.getList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/list.jsp</title>
</head>
<body>
<div class="container">
	<h1>☆일 정     목 록☆</h1>
	<br>
	<table border="2" bordercolor="green">
		<thead>
			<tr align = "center" bgcolor="skybule">
				<th>번 호</th>
				<th>할 일</th>
				<th>일 자</th>
				<th>수 정</th>
				<th>삭 제</th>
			</tr>
		</thead>
		<tbody>
			<%for(TodoDto tmp:list) { %>
				<tr align = "center">
					<td><%=tmp.getNum() %></td>
					<td><%=tmp.getContent() %></td>
					<td><%=tmp.getRegdate() %></td>
					<td>
						<a href="updateform.jsp?num=<%=tmp.getNum() %>">수정</a>
					</td>
					<td>
						<a href="delete.jsp?num=<%=tmp.getNum() %>">삭제</a>
					</td>
				</tr>
			<%} %>
		</tbody>
	</table>
	<br>
	<table>
		<form action="./insert.jsp">
			<button type="button" onclick="location.href='insertform.jsp'">일정 추가</button>
	</table>
</div>
</body>
</html>