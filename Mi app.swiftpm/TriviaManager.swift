//
//  Trivia.swift
//  CultureScope
//
//  Created by Adrian Gutierrez on 23/02/25.
//

import Foundation

final class TriviaManager {
    
    func buildTriviaModel() -> TriviaModel {
        var items = TriviaData.triviaItems.shuffled()
        var questions = [Question]()
        for index in 0...4 {
            questions.append(buildQuestionModel(for: items[index].question, with: items[index].answer))
        }
        return TriviaModel(score: 0,
                           currentQuestion: 0,
                           questions: questions)
    }
    
    private func buildQuestionModel(for question: String, with answer: String) -> Question {
        var answers = TriviaData.countries.filter { $0 != answer }.shuffled()
        let correctAnswerIndex = Int.random(in: 0...3)
        var answerDictionary: [Int: String] = [correctAnswerIndex: answer]
        for index in 0...3 {
            tryRegister(answer: answers.removeFirst(),
                        in: &answerDictionary,
                        with: index)
        }
        return Question(question: question, answers: answerDictionary, correctAnswerIndex: correctAnswerIndex)
    }
    
    private func tryRegister(answer: String, in answers: inout [Int: String], with index: Int) {
        if answers[index] == nil {
            answers[index] = answer
        }
    }
}
