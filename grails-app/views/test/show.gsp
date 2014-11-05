<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="blog">
</head>
<body>
    <g:each in="${questions}" var="question" status="itr">
        <g:render template="/question/question" model="[question:question, itr : itr,edit:true]" ></g:render>
    </g:each>
</body>
</html>