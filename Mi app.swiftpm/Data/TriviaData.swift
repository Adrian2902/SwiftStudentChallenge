//
//  TriviaData.swift
//  CultureScope
//
//  Created by Adrian Gutierrez on 23/02/25.
//

final class TriviaData {

    struct TriviaItem {
        let question: String
        let answer: String
    }

    static let countries = ["Japan", "Mexico", "France", "India", "Italy", "China", "Brazil", "Egypt", "Germany", "Russia"]
    
    static let triviaItems: [TriviaItem] = [
        TriviaItem(question: "Which country is famous for its tea ceremony?",
                   answer: "Japan"),
        TriviaItem(question: "The Day of the Dead is an important tradition in which country?",
                   answer: "Mexico"),
        TriviaItem(question: "Which country is known for its world-class cuisine, including croissants and cheese?",
                   answer: "France"),
        TriviaItem(question: "The festival of Holi, celebrated with colorful powders, comes from which country?",
                   answer: "India"),
        TriviaItem(question: "Which country is home to the ancient ruins of the Colosseum?",
                   answer: "Italy"),
        TriviaItem(question: "The Great Wall is one of the most famous landmarks of which country?",
                   answer: "China"),
        TriviaItem(question: "Which country hosts the world-famous Rio Carnival?",
                   answer: "Brazil"),
        TriviaItem(question: "The pyramids of Giza are found in which country?",
                   answer: "Egypt"),
        TriviaItem(question: "Oktoberfest, a famous beer festival, is celebrated in which country?",
                   answer: "Germany"),
        TriviaItem(question: "The tradition of banya, a type of sauna, is popular in which country?",
                   answer: "Russia"),
        TriviaItem(question: "Which country is known for its bullet trains called Shinkansen?",
                   answer: "Japan"),
        TriviaItem(question: "Which country’s cuisine includes tacos, mole, and tamales?",
                   answer: "Mexico"),
        TriviaItem(question: "The Eiffel Tower is one of the most famous landmarks in which country?",
                   answer: "France"),
        TriviaItem(question: "The Taj Mahal, a symbol of love, is located in which country?",
                   answer: "Inidia"),
        TriviaItem(question: "Which country is the birthplace of pasta and pizza?",
                   answer: "Italy"),
        TriviaItem(question: "Which country is the largest in South America and home to the Amazon rainforest?",
                   answer: "Brazil"),
        TriviaItem(question: "In which country can you find the Forbidden City?",
                   answer: "China"),
        TriviaItem(question: "Which country has a strong football (soccer) culture and produced legends like Pelé?",
                   answer: "Brazil"),
        TriviaItem(question: "Which country has a long history of classical composers like Beethoven?",
                   answer: "Germany"),
        TriviaItem(question: "The Kremlin and St. Basil’s Cathedral are famous landmarks in which country?",
                   answer: "Russia")
    ]
}
