<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="blog">
    <title></title>
</head>

<body>
    <input type="button" value="Edit">
    <form action="${createLink(action: 'updateQuestion')}" method="post">
        <input type="hidden" name="id" value="${question.id}">
        <table cellpadding="5" cellspacing="0" border="1">
            <tr>
                <td colspan="2"><textarea rows="10" cols="100" name="question">${question.question}</textarea></td>
            </tr>
            <tr>
                <td><textarea name="optionA" cols="50">${question.optionA}</textarea></td>
                <td><textarea name="optionB" cols="50">${question.optionB}</textarea></td>
            </tr>
            <tr>
                <td><textarea name="optionC" cols="50">${question.optionC}</textarea></td>
                <td><textarea name="optionD" cols="50">${question.optionD}</textarea></td>
            </tr>
            <tr>
                <td colspan="2">
                    <textarea rows="10" cols="100" name="explanation">${question.explanation}</textarea>
                </td>
            </tr>
            <tr>
                <td>
                    Select Level : <g:select name="level" from="${1..3}" value="${question.level}" />
                </td>
                <td>
                    Select Answer : <g:select name="answer" from="${['A','B','C','D']}" value="${question.answer}" />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Submit"></td>
            </tr>
        </table>
    </form>
</body>
</html>