<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="blog">
</head>
<body>
    <table cellpadding="5" cellspacing="0" border="1">
        <tr>
            <th>S.No</th>
            <th>Test Id</th>
            <th>Category Name</th>
            <th>Action</th>
        </tr>
        <g:each in="${tests}" var="test" status="itr">
            <tr>
                <td>${itr+1}</td>
                <td>${test.id}</td>
                <td>${test.getCategory()}</td>
                <td><a href="${createLink(action: 'showTest', params: [testId : test.id])}">View</a></td>
            </tr>
        </g:each>
    </table>
</body>
</html>