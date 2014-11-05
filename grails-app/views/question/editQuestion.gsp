<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="blog">
    <title></title>
</head>

<body>
    <input type="button" value="Edit">
    <g:render template="editQuestion" model="[question: question]"></g:render>
</body>
</html>