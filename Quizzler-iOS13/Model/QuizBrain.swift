//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Selma Kayan on 3/21/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//Enhancements were 1) Image View
// 2) Button
// 3) Label texts
// 4) Altered questions
// 5) Embedded Navigation Controller

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "The cup is full.", a: "False"),
        Question(q: "The Earth is a sphere", a: "True"),
        Question(q: "The fire is cold", a: "False"),
        Question(q: "Chocolate is poisonous to dogs", a: "True"),
        Question(q: "Pork is cow meat.", a: "False"),
        Question(q: "It's legal to smoke in the hospital", a: "False"),
        Question(q: "There are four seasons in a year.", a: "True"),
        Question(q: "Africa is a country.", a: "False"),
        Question(q: "Wine comes from grapes in the vineyard.", a: "True"),
        Question(q: "Tigers have the strong desire to eat bananas.", a: "False"),
        Question(q: "Dinosaurs have a strong infinity for jello.", a: "False"),
        Question(q: "George Washington was the 1st president of the United States of America.", a: "True")

    
    
    ]
    var questionNumber = 0
    var score = 0
    
   mutating func checkAnswer( userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getScore() -> Int {
       return score
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
        
    }
    
    func getProgess() -> Float {
        let progress = Float(questionNumber) / Float (quiz.count)
        return progress
        
    }
    
   mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
    
    
}
