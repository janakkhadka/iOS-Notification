//
//  ContentView.swift
//  iOS Notification
//
//  Created by Janak Khadka on 27/02/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button(
                action: {
                    
                }
            ){
                Text("Schedule Notification")
                    .frame(width: 180, height: 40)
                    .background(Color.blue)
                    .foregroundStyle(.white)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
