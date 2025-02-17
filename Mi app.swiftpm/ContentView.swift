import SwiftUI


// MARK: - Content View
struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                Text("\n\n\nCultureScope")
                    .font(.system(size: 35, weight: .bold, design: .monospaced))
                    .fontWeight(.black)
                    .multilineTextAlignment(.center)
                    .padding()
                                    
                NavigationLink("View Cultural Map", destination: MapView())
                    .buttonStyle(MainButtonStyle())
                
                NavigationLink("Cultural Trivia Game", destination: TriviaView())
                    .buttonStyle(MainButtonStyle())
                
                Spacer()
            }
        }
    }
}

// MARK: - Map View
struct MapView: View {
    var body: some View {
        List {
            CultureRow(name: "🇲🇽 Mexico", description: "A vibrant culture with rich traditions, food, and music.")
            CultureRow(name: "🇯🇵 Japan", description: "A blend of ancient traditions and modern technology.")
            CultureRow(name: "🇮🇳 India", description: "Known for its diverse festivals, vibrant food, and colors.")
        }
        .navigationTitle("Cultural Map")
    }
}

struct CultureRow: View {
    let name: String
    let description: String
    
    var body: some View {
        HStack {
            Text(name)
                .font(.headline)
            Spacer()
            Text(description)
                .font(.subheadline)
                .foregroundColor(.gray)
                .lineLimit(2)
        }
        .padding(.vertical)
    }
}

// MARK: - Trivia View
struct TriviaView: View {
    @State private var selectedAnswer: String? = nil
    @State private var showResult: Bool = false
    
    let question = "Which country is famous for its tacos?"
    let options = ["Japan", "Mexico", "India", "Italy"]
    let correctAnswer = "Mexico"
    
    var body: some View {
        VStack(spacing: 20) {
            Text("🎮 Cultural Trivia Game")
                .font(.largeTitle)
                .padding()
            
            Text(question)
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()
            
            ForEach(options, id: \.self) { option in
                Button(action: {
                    selectedAnswer = option
                    showResult = true
                }) {
                    Text(option)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.orange.opacity(0.7))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.horizontal)
                }
            }
            
            if showResult {
                if selectedAnswer == correctAnswer {
                    Text("Correct! 🎉")
                        .font(.title)
                        .foregroundColor(.green)
                } else {
                    Text("Oops! The correct answer is \(correctAnswer).")
                        .font(.title)
                        .foregroundColor(.red)
                }
            }
            Spacer()
        }
        .padding()
        .navigationTitle("Trivia")
    }
}

// MARK: - Custom Button Style
struct MainButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.blue.opacity(configuration.isPressed ? 0.5 : 0.7))
            .foregroundColor(.white)
            .cornerRadius(12)
            .padding(.horizontal)
    }
}

