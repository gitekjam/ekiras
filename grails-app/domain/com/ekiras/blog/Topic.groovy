package com.ekiras.blog

class Topic {

    String name;

    static belongsTo = [category: Category]
    static hasMany = [question : Question]


    static constraints = {
    }
}
