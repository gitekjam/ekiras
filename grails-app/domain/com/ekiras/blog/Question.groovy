package com.ekiras.blog

class Question {

    String question;
    String optionA;
    String optionB;
    String optionC;
    String optionD;
    String answer;
    String explanation;
    Integer level = 1;
    Integer setId;



    static constraints = {
        explanation nullable: true;
    }
}
