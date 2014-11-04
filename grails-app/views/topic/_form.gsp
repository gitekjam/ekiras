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

<div class="fieldcontain ${hasErrors(bean: topicInstance, field: 'question', 'error')} ">
	<label for="question">
		<g:message code="topic.question.label" default="Question" />
		
	</label>
	<g:select name="question" from="${com.ekiras.blog.Question.list()}" multiple="multiple" optionKey="id" size="5" value="${topicInstance?.question*.id}" class="many-to-many"/>

</div>

