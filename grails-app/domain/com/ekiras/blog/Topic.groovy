package com.ekiras.blog

class Topic {

    String name;

    static belongsTo = [category : Category]
    static hasMany = [questions  : Question]


    static constraints = {
    }

    public String toString(){
        return name;
    }
}
