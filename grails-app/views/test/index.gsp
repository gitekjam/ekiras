<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<table border="1" cellspacing="0" cellpadding="5">
    <tr>
        <td>S.No.</td>
        <td>Category</td>
        <td>NOQ</td>
        <td>Unused</td>
        <td>Action</td>
        <td>View All</td>
    </tr>
    <g:each in="${categories.keySet()}" var="category" status="itr">
        <tr>
            <td>${itr+1}</td>
            <td>${category}</td>
            <td>${categories.get(category)[0]}</td>
            <td>${categories.get(category)[0]- categories.get(category)[1]}</td>
            <td>
                <g:if test="${categories.get(category)[0]- categories.get(category)[1] >= 10}">
                    <a href="${createLink(action: 'createTest', params: [categoryId : category.id])}">Create Test</a>&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="${createLink(action: 'createAllPossibleTests', params: [categoryId : category.id])}">Create All</a>
                </g:if>
            </td>
            <td>
                <a href="${createLink(action: 'listTest', params: [categoryId: category.id])}">View Tests</a>
            </td>
        </tr>
    </g:each>
</table>
</body>
</html>