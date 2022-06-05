//
//  Randomize_MeApp.swift
//  Randomize Me
//
//  Created by Peter Ahlgren on 2022-02-23.
//

import SwiftUI

@main
struct Randomize_MeApp: App {
    
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                Home()
                    .preferredColorScheme(isDarkMode ? .dark : .light)
            }
        }
    }
}
