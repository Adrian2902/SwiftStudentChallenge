//
//  CultureViews.swift
//  CultureScope
//
//  Created by Adrian Gutierrez on 21/02/25.
//
import SwiftUI

struct CultureView: View {
    let cultureModel: CultureModel
    
    init(cultureModel: CultureModel) {
        self.cultureModel = cultureModel
    }
    
    var body: some View {
        VStack {
            Text(cultureModel.nameWithFlag)
                .font(.largeTitle)
                .bold()
            Image(cultureModel.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            Text(cultureModel.description)
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
        }
        .navigationTitle(cultureModel.name)
        .padding()
    }
}
