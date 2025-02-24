//
//  CultureViews.swift
//  CultureScope
//
//  Created by Adrian Gutierrez on 21/02/25.
//
import SwiftUI

struct CultureModel {
    let name: String
    let imageName: String
    let desccription: String
    let flag: String
    
    var nameWithFlag: String {
        return "\(name) \(flag)"
    }
}

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
            Text(cultureModel.desccription)
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
        }
        .navigationTitle(cultureModel.name)
        .padding()
    }
}

struct MexicoView: View {
    var body: some View {
        VStack {
            Text("Mexico 🇲🇽")
                .font(.largeTitle)
                .bold()
            Image("mexicoImage")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            Text("Mexico has a rich cultural heritage influenced by ancient civilizations like the Aztecs and Mayans. Its traditions, such as Día de los Muertos, showcase a deep connection to ancestry. Mexican cuisine, including tacos and mole, is recognized by UNESCO as an Intangible Cultural Heritage of Humanity.")
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
        }
        .navigationTitle("Mexico")
        .padding()
    }
}

struct FranceView: View {
    var body: some View {
        VStack {
            Text("Mexico 🇲🇽")
                .font(.largeTitle)
                .bold()
            Image("mexicoImage")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            Text("Mexico has a rich cultural heritage influenced by ancient civilizations like the Aztecs and Mayans. Its traditions, such as Día de los Muertos, showcase a deep connection to ancestry. Mexican cuisine, including tacos and mole, is recognized by UNESCO as an Intangible Cultural Heritage of Humanity.")
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
        }
        .navigationTitle("Mexico")
        .padding()
    }
}

struct InidiaView: View {
    var body: some View {
        VStack {
            Text("Mexico 🇲🇽")
                .font(.largeTitle)
                .bold()
            Image("mexicoImage")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            Text("Mexico has a rich cultural heritage influenced by ancient civilizations like the Aztecs and Mayans. Its traditions, such as Día de los Muertos, showcase a deep connection to ancestry. Mexican cuisine, including tacos and mole, is recognized by UNESCO as an Intangible Cultural Heritage of Humanity.")
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
        }
        .navigationTitle("Mexico")
        .padding()
    }
}

struct ItalyView: View {
    var body: some View {
        VStack {
            Text("Mexico 🇲🇽")
                .font(.largeTitle)
                .bold()
            Image("mexicoImage")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            Text("Mexico has a rich cultural heritage influenced by ancient civilizations like the Aztecs and Mayans. Its traditions, such as Día de los Muertos, showcase a deep connection to ancestry. Mexican cuisine, including tacos and mole, is recognized by UNESCO as an Intangible Cultural Heritage of Humanity.")
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
        }
        .navigationTitle("Mexico")
        .padding()
    }
}

struct ChinaView: View {
    var body: some View {
        VStack {
            Text("Mexico 🇲🇽")
                .font(.largeTitle)
                .bold()
            Image("mexicoImage")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            Text("Mexico has a rich cultural heritage influenced by ancient civilizations like the Aztecs and Mayans. Its traditions, such as Día de los Muertos, showcase a deep connection to ancestry. Mexican cuisine, including tacos and mole, is recognized by UNESCO as an Intangible Cultural Heritage of Humanity.")
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
        }
        .navigationTitle("Mexico")
        .padding()
    }
}

struct BrazilView: View {
    var body: some View {
        VStack {
            Text("Mexico 🇲🇽")
                .font(.largeTitle)
                .bold()
            Image("mexicoImage")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            Text("Mexico has a rich cultural heritage influenced by ancient civilizations like the Aztecs and Mayans. Its traditions, such as Día de los Muertos, showcase a deep connection to ancestry. Mexican cuisine, including tacos and mole, is recognized by UNESCO as an Intangible Cultural Heritage of Humanity.")
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
        }
        .navigationTitle("Mexico")
        .padding()
    }
}

struct EgyptView: View {
    var body: some View {
        VStack {
            Text("Mexico 🇲🇽")
                .font(.largeTitle)
                .bold()
            Image("mexicoImage")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            Text("Mexico has a rich cultural heritage influenced by ancient civilizations like the Aztecs and Mayans. Its traditions, such as Día de los Muertos, showcase a deep connection to ancestry. Mexican cuisine, including tacos and mole, is recognized by UNESCO as an Intangible Cultural Heritage of Humanity.")
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
        }
        .navigationTitle("Mexico")
        .padding()
    }
}

struct GermanyView: View {
    var body: some View {
        VStack {
            Text("Mexico 🇲🇽")
                .font(.largeTitle)
                .bold()
            Image("mexicoImage")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            Text("Mexico has a rich cultural heritage influenced by ancient civilizations like the Aztecs and Mayans. Its traditions, such as Día de los Muertos, showcase a deep connection to ancestry. Mexican cuisine, including tacos and mole, is recognized by UNESCO as an Intangible Cultural Heritage of Humanity.")
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
        }
        .navigationTitle("Mexico")
        .padding()
    }
}

struct RussiaView: View {
    var body: some View {
        VStack {
            Text("Mexico 🇲🇽")
                .font(.largeTitle)
                .bold()
            Image("mexicoImage")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            Text("Mexico has a rich cultural heritage influenced by ancient civilizations like the Aztecs and Mayans. Its traditions, such as Día de los Muertos, showcase a deep connection to ancestry. Mexican cuisine, including tacos and mole, is recognized by UNESCO as an Intangible Cultural Heritage of Humanity.")
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
        }
        .navigationTitle("Mexico")
        .padding()
    }
}
