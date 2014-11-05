<div class="container-question">
    <div class="question"><b>Question ${itr+1}</b> <pre>${question.question}</pre></div>
    <table cellspacing="1" style="width: 100%">
        <tr><td class="optionA">${question.optionA}</td><td class="optionB">${question.optionB}</td></tr>
        <tr><td class="optionC">${question.optionC}</td><td class="optionD">${question.optionD}</td></tr>
    </table>
    <div class="handle ">
        <div class="view-solution"></div>
        <g:if test="${edit}">
            <a class="edit" href="${createLink( controller: 'question',action: 'editQuestion',params: [questionId : question.id])}">Edit Question</a>
        </g:if>
        <div class="solution hidden">
            <div class="answer">${question.answer}</div>
            <div class="explanation">${question.explanation}</div>
        </div>
    </div>
</div>