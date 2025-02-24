//
//  SwiftUIView.swift
//  CultureScope
//
//  Created by Adrian Gutierrez on 23/02/25.
//

import SwiftUI

struct ResultsView: View {
    @Environment(\.presentationMode) var presentationMode

    let finalScore: Int
    
    init(finalScore: Int, wasFinalAnswerCorrect: Bool) {
        self.finalScore = finalScore + (wasFinalAnswerCorrect ? 1 : 0)
    }
    
    var body: some View {
        ZStack{
            Color.newTertiaryColor
                .ignoresSafeArea()
            VStack{
                Text("Your final Score was \(finalScore)")
                    .navigationBarBackButtonHidden(true)
                    .font(.system(size: 50, weight: .bold))
                    .foregroundColor(.newSecondaryColor)
                NavigationLink("Go Home", destination: {
                    ContentView()
                })
                .buttonStyle(.borderedProminent)
                .controlSize(.extraLarge)
                .foregroundColor(.newSecondaryColor)
                .font(.system(size: 20, weight: .black))
            }
        }
    }
}
