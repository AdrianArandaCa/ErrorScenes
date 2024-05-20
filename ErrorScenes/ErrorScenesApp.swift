//
//  ErrorScenesApp.swift
//  ErrorScenes
//
//  Created by Adrian Aranda Campanario on 20/5/24.
//

import SwiftUI

@main
struct ErrorScenesApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(errorType: .brokenLink, buttonText: "Go Back") {
                
            }
        }
    }
}
