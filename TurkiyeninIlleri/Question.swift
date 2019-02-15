//
//  Question.swift
//  TurkiyeninIlleri
//
//  Created by Halil Özel on 15.02.2019.
//  Copyright © 2019 Halil Özel. All rights reserved.
//

import Foundation

class Question {
    
    let answer : Bool
    let questionText : String
    
    init(text : String, correctAnswer : Bool) {
        questionText = text
        answer = correctAnswer
    }
    
}
