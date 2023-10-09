//
//  NotificationView.swift
//  Jobs
//
//  Created by Venkata on 10/8/23.
//

import SwiftUI

struct NotificationView: View {
    @StateObject private var viewModel = NotificationViewModel()

    var body: some View {
        VStack {
            Text("Notifications")
                .font(.largeTitle)
            
            Button("Schedule Notification") {
                let notification = NotificationModel(title: "Hello from MVVM!", body: "Your MVVM notification is ready.", timeInterval: 5)
                viewModel.scheduleNotification(notification: notification)
            }
        }
    }
}

