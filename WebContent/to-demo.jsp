<%@ page import="java.util.*" %>

<html>

<body>

<form action="to-demo.jsp">
	Add new item: <input type="text" name="theItem"/>
	
	<input type="submit" value="Submit"/>
	
</form>

	<%
		List<String> items = (List<String>) session.getAttribute("myToDoList");
	
	if (items == null){
		items = new ArrayList<String>();
		session.setAttribute("myTodoList", items);
	}
	
	String theItem = request.getParameter("theItem");
	if(theItem !=null){
		items.add(theItem);
	}
	
	%>
	
<hr>
<b>To List Items: </b><br/>

<ol>
	<%
		for (String temp: items) {
			out.println("<li>" + temp + "<li>");
		}
	%>
</ol>
</body>
</html>