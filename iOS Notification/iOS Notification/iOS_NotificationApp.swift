//
//  iOS_NotificationApp.swift
//  iOS Notification
//
//  Created by Janak Khadka on 27/02/2025.
//

import SwiftUI

@main
struct iOS_NotificationApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                                    requestNotificationPermission()
                                }
        }
    }
    
    func requestNotificationPermission() {
            UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
                if granted {
                    print("Notification permission granted.")
                } else if let error = error {
                    print("Notification permission error: \(error.localizedDescription)")
                }
            }

            // Check current notification settings
            UNUserNotificationCenter.current().getNotificationSettings { settings in
                print("Notification settings: \(settings.authorizationStatus)")
            }
        }
}
