
<%@ page import="com.ekiras.blog.Question" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'question.label', default: 'Question')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-question" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-question" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="explanation" title="${message(code: 'question.explanation.label', default: 'Explanation')}" />
					
						<g:sortableColumn property="answer" title="${message(code: 'question.answer.label', default: 'Answer')}" />
					
						<g:sortableColumn property="level" title="${message(code: 'question.level.label', default: 'Level')}" />
					
						<g:sortableColumn property="optionA" title="${message(code: 'question.optionA.label', default: 'Option A')}" />
					
						<g:sortableColumn property="optionB" title="${message(code: 'question.optionB.label', default: 'Option B')}" />
					
						<g:sortableColumn property="optionC" title="${message(code: 'question.optionC.label', default: 'Option C')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${questionInstanceList}" status="i" var="questionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${questionInstance.id}">${fieldValue(bean: questionInstance, field: "explanation")}</g:link></td>
					
						<td>${fieldValue(bean: questionInstance, field: "answer")}</td>
					
						<td>${fieldValue(bean: questionInstance, field: "level")}</td>
					
						<td>${fieldValue(bean: questionInstance, field: "optionA")}</td>
					
						<td>${fieldValue(bean: questionInstance, field: "optionB")}</td>
					
						<td>${fieldValue(bean: questionInstance, field: "optionC")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${questionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
