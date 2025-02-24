//
//  TriviaModel.swift
//  CultureScope
//
//  Created by Adrian Gutierrez on 23/02/25.
//

import Foundation

struct TriviaModel {
    var score: Int
    var currentQuestion: Int
    let questions: [Question]
}

extension TriviaModel {
    init(model: TriviaModel, wasPreviousAnswerCorrect: Bool) {
        score = model.score + (wasPreviousAnswerCorrect ? 1 : 0)
        currentQuestion = model.currentQuestion + 1
        questions = model.questions
    }
}

struct Question {
    let question: String
    let answers: [Int: String]
    let correctAnswerIndex: Int
    
    var answerArray: [String] {
        var answerArray = [String?]()
        for index in 0...3 {
            answerArray.append(answers[index])
        }
        return answerArray.compactMap { $0 }
    }
}

