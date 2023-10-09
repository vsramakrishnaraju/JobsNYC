//
//  NotificationDelegate.swift
//  Jobs
//
//  Created by Venkata on 10/8/23.
//

import UserNotifications
import UIKit

class NotificationDelegate: NSObject, UNUserNotificationCenterDelegate {
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.alert, .sound, .badge])
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    let notificationDelegate = NotificationDelegate()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        let center = UNUserNotificationCenter.current()
        center.delegate = notificationDelegate
        
        return true
    }
}





