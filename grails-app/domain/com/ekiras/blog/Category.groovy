package com.ekiras.blog

class Category {

    String category;

    static hasMany = [topic : Topic]

    static constraints = {
    }
}
