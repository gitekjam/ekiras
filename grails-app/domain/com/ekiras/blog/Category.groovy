package com.ekiras.blog

class Category {

    String name;

    static hasMany = [topics : Topic]

    static constraints = {
    }

    public String toString(){
        return name;
    }
}
