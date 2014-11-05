<%@ page import="com.ekiras.blog.Question" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="blog">
</head>
<body>
<g:render template="question"  model="[question: question, itr : 0,edit:true]"></g:render>
</body>
</html>
