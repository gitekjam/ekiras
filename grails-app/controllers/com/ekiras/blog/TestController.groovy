package com.ekiras.blog

class TestController {

    def testService;

    def index() {
        Map<Category,Map<Integer,Integer>> map  = new LinkedHashMap<Category, Map<Integer,Integer>>();
        Category.listOrderById().each {category->
            map.put(category, [Question.findAllByTopicInList(Topic.findAllByCategory(category)).size(),Question.findAllByTopicInListAndUsed(Topic.findAllByCategory(category),true).size()])
        }
        render view: 'index', model: [categories : map]
    }


    def createTest(Long categoryId){
        redirect action: 'showTest', params: [testId : testService.createTest(categoryId)]
    }

    def createAllPossibleTests(Long categoryId){
       int noq = Question.createCriteria().list {
           eq("used",false)
           'in'("topic",Topic.findAllByCategory(com.ekiras.blog.Category.load(categoryId)))
       }.size()
        while(noq>=10){
            noq -= 10;
            testService.createTest(categoryId);
        }
        redirect( action: 'listTest',params: [categoryId : categoryId])
    }

    def showTest(Long testId){
        if(testId == null || testId ==0){
            redirect action: 'listTest'
        }
        render view: 'show', model: [questions : Test.findById(testId).questions]

    }

    def listTest(Long categoryId){
        if(categoryId ==null)
            redirect action: 'index';
        render view: 'list', model: [tests : Test.findAllByCategory(Category.load(categoryId))];
    }

//    def test(long id){
//
//        String container = "<div class=\"dp-highlighter\">";
//        String ques = "<textarea style=\"display:none;\" class=\"originalCode\">";
//        String end = "</textarea></div>";
//
//        List questions = [];
//
//        Question.list().each {q->
//            if (q.question.contains(container) && q.question.contains(ques)) {
//                println "::::editing ::::${q.id}"
//                q.question = (q.question.replace(q.question.substring(q.question.indexOf(container), q.question.lastIndexOf(ques)), "<pre class='brush:java'>").replace(end, "</pre>"));
//                q.question = q.question.replace(ques, "");
//                questions.add(q.id);
//
//            }
//        }
//        println( ":::  ${questions}")
//    }

}
