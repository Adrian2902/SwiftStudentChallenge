//
//  TriviaView.swift
//  CultureScope
//
//  Created by Adrian Gutierrez on 23/02/25.
//

import SwiftUI

// MARK: - Trivia View
struct TriviaView: View {
    @State private var selectedAnswer: String? = nil
    @State private var showResult: Bool = false
    
    private var model: TriviaModel
    private let questionModel: Question
    private let question: String
    private let answers: [String]
    private let correctAnswer: String
    
    init(with model: TriviaModel) {
        self.model = model
        questionModel = model.questions[model.currentQuestion]
        question = questionModel.question
        answers = questionModel.answerArray
        correctAnswer = answers[questionModel.correctAnswerIndex]
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Cultural Trivia Game")
                .font(.system(size: 40))
                .padding()
            
            Text(question)
                .font(.system(size: 35))
                .multilineTextAlignment(.center)
                .padding()
            
            ForEach(answers, id: \.self) { answer in
                Button(action: {
                    selectedAnswer = answer
                    showResult = true
                }) {
                    Text(answer)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.newPrimaryColor)
                        .foregroundColor(.newSecondaryColor)
                        .cornerRadius(20)
                        .padding(.horizontal)
                        .font(.system(size: 25))
                }
                .disabled(selectedAnswer != nil)
            }
            
            if showResult {
                if selectedAnswer == correctAnswer {
                    Text("Correct!")
                        .font(.title).bold()
                        .foregroundColor(.green)
                } else {
                    Text("Oops! The correct answer is \(correctAnswer).")
                        .font(.title)
                        .foregroundColor(.red)
                }
                if model.currentQuestion < 4 {
                    NavigationLink("Next Question", destination: {
                        TriviaView(with: TriviaModel(
                            model: model,
                            wasPreviousAnswerCorrect: selectedAnswer == correctAnswer))
                    })
                    .buttonStyle(.borderedProminent)
                    .controlSize(.extraLarge)
                    .foregroundColor(.newSecondaryColor)
                    .font(.system(size: 20, weight: .black))
                } else {
                    NavigationLink("See Results", destination: {
                        ResultsView(finalScore: model.score, wasFinalAnswerCorrect: selectedAnswer == correctAnswer)
                    })
                    .buttonStyle(.borderedProminent)
                    .controlSize(.extraLarge)
                    .foregroundColor(.newSecondaryColor)
                    .font(.system(size: 20, weight: .black))
                }
            }
            
            Spacer()
        }
        .padding()
        .navigationTitle("Trivia")
        .navigationBarBackButtonHidden(true)
    }
}

