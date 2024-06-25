import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.yellow
                .ignoresSafeArea() 
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("SWIFT")
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
