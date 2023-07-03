//
//  SwiftUI_ChattingApp.swift
//  SwiftUI-Chatting
//
//  Created by Bekzhan Talgat on 03.07.2023.
//

import SwiftUI
//import Firebase
import FirebaseCore


class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}


@main
struct SwiftUI_ChattingApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
//    init() {
//        FirebaseApp.configure()
//    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
