<%@ page language="java" import="java.util.Date"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Calculations</h1>
	<%
	Date d = new Date();
	%>
	<h3>
		Date:<%=d%></h3>
		
	<%! 
	public int Addition(int n1, int n2) {
		return n1 + n2;
	}

	public int abc(int n1) {
		int f = 1;
		for (int i = 1; i <= n1; i++) {
			f = f * i;
		}
		return f;
	} 
	%>
	
	<%
	int n1 = Integer.parseInt(request.getParameter("num1"));
	%>
	
	<%
	String btn = request.getParameter("btn");
	switch (btn) {
	case "add":
		int n2 = Integer.parseInt(request.getParameter("num2"));
		int ans = Addition(n1, n2);
	%>
	<h3>Addition is :<%= ans%></h3>
	
	<%
	break;
	
	case "factorial":
		ans = abc(n1);
	%>
	<h3>
		Factorial is:<%=ans%></h3>
	
	<% break;
	
	}
	%>
</body>
</html>