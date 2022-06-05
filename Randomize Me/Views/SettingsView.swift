//
//  SettingsView.swift
//  Randomize Me
//
//  Created by Peter Ahlgren on 2022-02-28.
//

import SwiftUI

struct SettingsView: View {
    
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some View {
        VStack {
            List {
                Text("Appearance:")
                HStack {
                    Toggle("Dark Mode", isOn: $isDarkMode)
                } //: HSTACK
            } //: LIST
        } //: VSTACK
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
