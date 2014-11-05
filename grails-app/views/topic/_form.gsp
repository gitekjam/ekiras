<%@ page import="com.ekiras.blog.Topic" %>



<div class="fieldcontain ${hasErrors(bean: topicInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="topic.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="category" name="category.id" from="${com.ekiras.blog.Category.list()}" optionKey="id" required="" value="${topicInstance?.category?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: topicInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="topic.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${topicInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: topicInstance, field: 'questions', 'error')} ">
	<label for="questions">
		<g:message code="topic.questions.label" default="Questions" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${topicInstance?.questions?}" var="q">
    <li><g:link controller="question" action="show" id="${q.id}">${q?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="question" action="create" params="['topic.id': topicInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'question.label', default: 'Question')])}</g:link>
</li>
</ul>


</div>

