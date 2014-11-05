package com.ekiras.blog

class Question implements  Comparable<Question>{

    String question;
    String optionA;
    String optionB;
    String optionC;
    String optionD;
    String answer;
    String explanation;
    Integer level = 1;
    Integer setId;
    Boolean used = false;

    static belongsTo = [topic : Topic]


    static constraints = {
        explanation nullable: true;

    }

    static mapping = {
        question type: 'text'
        optionA type: 'text'
        optionB  type: 'text'
        optionC type: 'text'
        optionD type: 'text'
        explanation type: 'text'
        sort("id" : "asc")
    }

    @Override
    int compareTo(Question question) {
        return this.id - question.id
    }
}
