
<%@ page import="com.ekiras.blog.Question" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'question.label', default: 'Question')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-question" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-question" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list question">
			
				<g:if test="${questionInstance?.explanation}">
				<li class="fieldcontain">
					<span id="explanation-label" class="property-label"><g:message code="question.explanation.label" default="Explanation" /></span>
					
						<span class="property-value" aria-labelledby="explanation-label"><g:fieldValue bean="${questionInstance}" field="explanation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionInstance?.answer}">
				<li class="fieldcontain">
					<span id="answer-label" class="property-label"><g:message code="question.answer.label" default="Answer" /></span>
					
						<span class="property-value" aria-labelledby="answer-label"><g:fieldValue bean="${questionInstance}" field="answer"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionInstance?.level}">
				<li class="fieldcontain">
					<span id="level-label" class="property-label"><g:message code="question.level.label" default="Level" /></span>
					
						<span class="property-value" aria-labelledby="level-label"><g:fieldValue bean="${questionInstance}" field="level"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionInstance?.optionA}">
				<li class="fieldcontain">
					<span id="optionA-label" class="property-label"><g:message code="question.optionA.label" default="Option A" /></span>
					
						<span class="property-value" aria-labelledby="optionA-label"><g:fieldValue bean="${questionInstance}" field="optionA"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionInstance?.optionB}">
				<li class="fieldcontain">
					<span id="optionB-label" class="property-label"><g:message code="question.optionB.label" default="Option B" /></span>
					
						<span class="property-value" aria-labelledby="optionB-label"><g:fieldValue bean="${questionInstance}" field="optionB"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionInstance?.optionC}">
				<li class="fieldcontain">
					<span id="optionC-label" class="property-label"><g:message code="question.optionC.label" default="Option C" /></span>
					
						<span class="property-value" aria-labelledby="optionC-label"><g:fieldValue bean="${questionInstance}" field="optionC"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionInstance?.optionD}">
				<li class="fieldcontain">
					<span id="optionD-label" class="property-label"><g:message code="question.optionD.label" default="Option D" /></span>
					
						<span class="property-value" aria-labelledby="optionD-label"><g:fieldValue bean="${questionInstance}" field="optionD"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionInstance?.question}">
				<li class="fieldcontain">
					<span id="question-label" class="property-label"><g:message code="question.question.label" default="Question" /></span>
					
						<span class="property-value" aria-labelledby="question-label"><g:fieldValue bean="${questionInstance}" field="question"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionInstance?.setId}">
				<li class="fieldcontain">
					<span id="setId-label" class="property-label"><g:message code="question.setId.label" default="Set Id" /></span>
					
						<span class="property-value" aria-labelledby="setId-label"><g:fieldValue bean="${questionInstance}" field="setId"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:questionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${questionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
