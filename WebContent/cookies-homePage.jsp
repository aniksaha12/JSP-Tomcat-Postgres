<html>


<body>

	<h3>Training Portal</h3>
	
<%
	String favLang = "Java";

	Cookie[] theCookies = request.getCookies();
	
	if(theCookies != null) {
		for(Cookie tempCookie: theCookies){
			if("myApp.favariteLanguage".equals(tempCookie.getName())){
				favLang = tempCookie.getValue();
				break;
			}
		}
	}
%>

<h4>New Books for <%=favLang %></h4>
	<ul>
		<li>bla bla bla bla</li>
		<li>bla bla bla bla</li>
		<li>bla bla bla bla</li>
		<li>bla bla bla bla</li>
	</ul>

<hr>
<h4>Latest new Reports for <%=favLang %></h4>
	<ul>
		<li>bla bla bla bla</li>
		<li>bla bla bla bla</li>
		<li>bla bla bla bla</li>
		<li>bla bla bla bla</li>
	</ul>

<hr>
<h4>Hot Job for Java <%=favLang %></h4>
	<ul>
		<li>bla bla bla bla</li>
		<li>bla bla bla bla</li>
		<li>bla bla bla bla</li>
		<li>bla bla bla bla</li>
	</ul>
</body>

<hr>
<a href="cookies-personalize-form.html">Personalize this page</a>

</html>