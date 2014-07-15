<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.joinway.service.Service" %>
<%@ page import="java.util.Locale" %>
<html>
<head>
<meta charset="utf-8">
<link href="css/xistyle.css" rel="stylesheet" type="text/css" media="all" />
<title>Feedback</title>
<script type="text/javascript">
function validate(){
	var uid = document.getElementById("feedback");
	if(uid.value.length == 0){
		alert('Feedback cannot be empty');
		return false;
	}
	
	return true;
}
</script>
</head>

<body onsubmit="return validate();">
<%
String game = "2balls";
Service service = new Service(game, Locale.ENGLISH);
%>
<form action="ok.jsp" method="post">
         <div class="xiluruk">
              <dl>
                  <dt><%=service.getMessage("title.game")%></dt>
                  <dd>
                      <span>&nbsp;</span>
                      <select name="category" class="xiwenbenk">
                        <option value="suggest"><%=service.getMessage("select.suggest")%></option>
                        <option value="other"><%=service.getMessage("select.other")%></option>
                      </select>
                  </dd>
                  <dd>
                      <span>Email</span>
                      <input name="email" type="email" class="xiwenbenk" maxlength="20" placeholder="sample@email.com">
                  </dd>
                  <dd>
                      <span>Feedback</span>
                      <textarea id="feedback" name="feedback" cols="" rows="" class="xiwenbenqy" maxlength="1000" placeholder="Please input feedback here(within 1000 characters)"></textarea>
                  </dd>
                  <dd>
                      <input type="submit" value="submit"  class="querenk">
                      <input type="hidden" name="game" value='<%=game%>'/>
                  </dd>
              </dl>
         </div>
</form>

</body>
</html>
