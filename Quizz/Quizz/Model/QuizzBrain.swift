//
//  QuizzBrain.swift
//  Quizz
//
//  Created by Mihir Solanki on 11/06/21.
//

import Foundation

struct  QuizzBrain {
    let quiz = [
        
        Question(q: "Python is an interpreted language.", a: "True"),
        Question(q: "To execute Python statements, the statements must be entered into a file.", a: "False"),
        Question(q: "Python's print statement writes items to the screen.", a: "True"),
        Question(q: " A full list of Python keywords can be obtained from Python itself, using the Python keyword module." , a: "True"),
        Question(q: " A variable called name refers to the same value as a variable called NAME." , a: "True"),
        Question(q: "The keyword function marks the beginning of a function definition." , a: "False"),
        Question(q: "Python determines the beginning and end of a statement based on whitespace." , a: "True"),
        Question(q: "Function int retrieves an integer from a program user." , a: "False"),
        Question(q: "Python has three high-level data structures: lists, dictionaries and hashes. " , a: "False"),
        Question(q: "Tuples are immutable data types; lists are mutable data types." , a: "True"),
        Question(q: "Tuples are immutable data types; lists are mutable data types." , a: "True"),
        Question(q: "List method append adds an element to the end of the list." , a: "True"),
        Question(q: "Dictionary values must be immutable data types." , a: "False"),
        Question(q: "Single quote characters (') inside a string must be escaped using the backslash character (i.e. \')." , a: "False"),
        Question(q: "Regular expression processing is built into the Python language." , a: "False"),
        Question(q: "Regular expression processing is built into the Python language." , a: "False"),
        Question(q: "The compile function of module re returns an instance of a SRE_Pattern object." , a: "False"),
        Question(q: "None is a Python type whose value indicates that no value exists." , a: "False")
        
    
                ]
    
    var questionNumber = 0
    var score = 0
    
   mutating func checkAnswer(_ userAnswer: String) ->Bool {
        
        if userAnswer == quiz[questionNumber].answer{
            score += 1
            return true
        }
        else{
            return false
        }
    }
    func getScore() -> Int {
        return score
    }
    
    func  getQuestionText() ->String {
        return quiz[questionNumber].text
    }
    
    func getProgress() ->Float {
        let progress = Float(questionNumber) / Float(quiz.count)
        
            return progress
    }
     
    
        
    
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count{
        questionNumber += 1
        }
        else{
            questionNumber = 0
            score = 0
        }
    }
}

         
