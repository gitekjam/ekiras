package ekiras.blog

import com.ekiras.blog.Question
import com.ekiras.blog.Test
import com.ekiras.blog.Topic
import grails.transaction.Transactional

@Transactional
class TestService {

    public Long createTest(Long categoryId) {
        ArrayList<Question> questions = Question.createCriteria().list{
            eq("used",false)
            'in'("topic",Topic.findAllByCategory(com.ekiras.blog.Category.load(categoryId)))
            maxResults(10)
            sqlRestriction "1=1 order by rand()"
        }
        Test test = new Test(questions : questions, category: com.ekiras.blog.Category.load(categoryId));
        test.save();
        questions.each {question->
            question.used=true;
            question.save();
        }
        return test.id;
    }
}
