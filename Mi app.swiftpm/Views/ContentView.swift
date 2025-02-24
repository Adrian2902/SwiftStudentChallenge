import SwiftUI

// MARK: - Content View
struct ContentView: View {
    var body: some View {
        NavigationStack(){
            ZStack{
                Color.newTertiaryColor
                    .ignoresSafeArea()
                
                VStack(spacing: 50) {
                    Text("culturescope")
                        .font(.system(size: 100, weight: .black))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.newPrimaryColor)
                        
                    NavigationLink("Cultural Learning", destination: CultureListView())
                        .buttonStyle(.borderedProminent)
                        .controlSize(.extraLarge)
                        .foregroundColor(.newSecondaryColor)
                        .font(.system(size: 20, weight: .black))
                        
                    NavigationLink("Cultural Trivia Game", destination: TriviaView(with: TriviaManager().buildTriviaModel()))
                        .buttonStyle(.borderedProminent)
                        .controlSize(.extraLarge)
                        .foregroundColor(.newSecondaryColor)
                        .font(.system(size: 20, weight: .black))
                }
                .font(.body).padding()
            }
        }
        .accentColor(.newPrimaryColor)
        .navigationBarBackButtonHidden(true)
    }
}
