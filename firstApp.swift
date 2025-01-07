//
//  ContentView.swift
//  myFirstSwiftApp
//
//  Created by Nikhil Tomy on 06/01/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "Hello World"
    @State private var isButtonTapped = false //Track if the button is pressed

    var body: some View {
        VStack {
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.blue)

            Button(action: {
                isButtonTapped.toggle()
                if message == "Hello World" {
                    message = "So Hello!!"
                } else {
                    message = "Hello World"
                }

            }) {
                Text("Tap Me!")
                    .padding(.vertical, 10)
                    .padding(.horizontal, 20)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .cornerRadius(10)

            }
            .scaleEffect(isButtonTapped ? 1.1 : 1.0)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(.gray, lineWidth: 2))
             .shadow(radius: 3)
             .padding(.horizontal,10)
              .animation(.easeInOut(duration: 0.15), value: isButtonTapped)
        }
        .padding(50)
    }
}

#Preview {
    ContentView()
}
