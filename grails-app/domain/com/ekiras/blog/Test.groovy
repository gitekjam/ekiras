package com.ekiras.blog

class Test {

    static belongsTo = [category : Category]
    static hasMany = [questions : Question]


    static constraints = {
    }

    static mapping = {
        sort(id : "asc")
    }
}
