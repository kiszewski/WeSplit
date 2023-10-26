//
//  GuessTheFlagView.swift
//  WeSplit
//
//  Created by Leonardo Kiszewski on 26/10/23.
//

import SwiftUI

struct GuessTheFlagView: View {
    var body: some View {
        ZStack {
            VStack {
                LinearGradient(stops: [
                    Gradient.Stop(color: .black, location: 0.05),
                    Gradient.Stop(color: .yellow, location: 0.95),
                ], startPoint: .top, endPoint: .bottom)
                AngularGradient(colors: [.red, .yellow, .green, .blue, .purple, .red], center: .center)
                RadialGradient(colors: [.orange, .gray], center: .center, startRadius: 90, endRadius: 200)
                Text("Gradient")
                    .frame(maxWidth: 300, maxHeight: 100)
                    .background(.red.gradient)
                VStack {
                    Button("Button 1", systemImage: "pencil") { }
                        .buttonStyle(.bordered)
                    Button("Button 2", role: .destructive) { }
                        .buttonStyle(.bordered)
                    Button { } label: {
                        HStack {
                            Image(systemName: "pencil")
                            Text("Tap Me")
                        }
                        .padding()
                        .foregroundStyle(.white)
                        .background(.red.gradient)
                    }
                    Button("Button 4", role: .destructive) { }
                        .buttonStyle(.bordered)
                        .tint(.mint)
                    Spacer()
                    
                }
            }
            Text("Content")
                .foregroundStyle(.blue)
                .padding(50)
                .background(.ultraThinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 32))
        }
        .ignoresSafeArea()
    }
    
    func executeDelete() {
           print("Now deleting…")
       }
}

#Preview {
    GuessTheFlagView()
}
