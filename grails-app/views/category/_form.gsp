<%@ page import="com.ekiras.blog.Category" %>



<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="category.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="category" required="" value="${categoryInstance?.category}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'topic', 'error')} ">
	<label for="topic">
		<g:message code="category.topic.label" default="Topic" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${categoryInstance?.topic?}" var="t">
    <li><g:link controller="topic" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="topic" action="create" params="['category.id': categoryInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'topic.label', default: 'Topic')])}</g:link>
</li>
</ul>


</div>

