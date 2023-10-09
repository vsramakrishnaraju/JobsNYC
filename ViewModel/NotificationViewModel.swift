//
//  NotificationViewModel.swift
//  Jobs
//
//  Created by Venkata on 10/8/23.
//

import UserNotifications

class NotificationViewModel: ObservableObject {
    
    init() {
        requestPermission()
    }
    
    private func requestPermission() {
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
            if let error = error {
                print("Permission error: \(error.localizedDescription)")
            }
        }
    }
    
    func scheduleNotification(notification: NotificationModel) {
        let center = UNUserNotificationCenter.current()
        
        let content = UNMutableNotificationContent()
        content.title = notification.title
        content.body = notification.body
        content.sound = UNNotificationSound.default
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: notification.timeInterval, repeats: false)
        
        let requestIdentifier = "localNotification"
        let request = UNNotificationRequest(identifier: requestIdentifier, content: content, trigger: trigger)
        
        center.add(request) { error in
            if let error = error {
                print("Error: \(error.localizedDescription)")
            }
        }
    }
}
