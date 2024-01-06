<html>

<head><title>Confirmation</title></head>

<%
	String favLang = request.getParameter("favariteLanguage");

	Cookie theCookie = new Cookie("myApp.favariteLanguage", favLang);
	
	theCookie.setMaxAge(60*60*24*365);
	
	response.addCookie(theCookie);
%>
<body>
	Thanks! We set your favorite language to: ${param.favariteLanguage}  
	
	<br/><br/>
	<a href="cookies-homePage.jsp">Return to HomePage</a>
</body>
</html>