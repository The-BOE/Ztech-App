//
//  latestApp.swift
//  latest
//
//  Created by user on 5/4/24.
//

import SwiftUI
//import FirebaseCore

//class AppDelegate: NSObject, UIApplicationDelegate{
//    func application(_ application: UIApplication,
//                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool{
//        FirebaseApp.configure()
//        return true
//    }
//}

@main
struct BarberApp: App {
//    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
//            ContentView()
//            sheetView()
            BarberView()
//            Login()
        }
    }
}
