//
//  Question.swift
//  Quizz
//
//  Created by Mihir Solanki on 11/06/21.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q:String , a:String) {
        text = q
        answer = a
    }
}
