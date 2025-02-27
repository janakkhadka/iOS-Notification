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
                    scheduleNotification()
                }
            ){
                Text("Schedule")
                    .padding()
                    .frame(width: 180, height: 40)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
    func scheduleNotification() {
        let content = UNMutableNotificationContent()
        content.title = "First Notification"
        content.body = "my first notification hurray"
        content.sound = UNNotificationSound.default
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        
        let request = UNNotificationRequest(identifier: "test", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request) { error in
            if let error = error {
                print("Error aayo: \(error.localizedDescription)")
            } else {
                print("scheduled vayo")
            }
        }
    }
}

#Preview {
    ContentView()
}
