//
//  dearMyStoryApp.swift
//  dearMyStory
//
//  Created by Jihye Hong on 2022/05/02.
//

import SwiftUI

@main
struct dearMyStoryApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(UserVM())
//            SignUpView()
        }
    }
}
