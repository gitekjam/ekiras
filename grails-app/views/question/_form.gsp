<%@ page import="com.ekiras.blog.Question" %>



<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'explanation', 'error')} ">
	<label for="explanation">
		<g:message code="question.explanation.label" default="Explanation" />
		
	</label>
	<g:textField name="explanation" value="${questionInstance?.explanation}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'answer', 'error')} required">
	<label for="answer">
		<g:message code="question.answer.label" default="Answer" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="answer" required="" value="${questionInstance?.answer}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'level', 'error')} required">
	<label for="level">
		<g:message code="question.level.label" default="Level" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="level" type="number" value="${questionInstance.level}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'optionA', 'error')} required">
	<label for="optionA">
		<g:message code="question.optionA.label" default="Option A" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="optionA" required="" value="${questionInstance?.optionA}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'optionB', 'error')} required">
	<label for="optionB">
		<g:message code="question.optionB.label" default="Option B" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="optionB" required="" value="${questionInstance?.optionB}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'optionC', 'error')} required">
	<label for="optionC">
		<g:message code="question.optionC.label" default="Option C" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="optionC" required="" value="${questionInstance?.optionC}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'optionD', 'error')} required">
	<label for="optionD">
		<g:message code="question.optionD.label" default="Option D" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="optionD" required="" value="${questionInstance?.optionD}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'question', 'error')} required">
	<label for="question">
		<g:message code="question.question.label" default="Question" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="question" required="" value="${questionInstance?.question}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'setId', 'error')} required">
	<label for="setId">
		<g:message code="question.setId.label" default="Set Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="setId" type="number" value="${questionInstance.setId}" required=""/>

</div>

