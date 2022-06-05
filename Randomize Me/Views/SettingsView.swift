//
//  SettingsView.swift
//  Randomize Me
//
//  Created by Peter Ahlgren on 2022-02-28.
//

import SwiftUI
import SafariServices


struct SFSafariViewWrapper: UIViewControllerRepresentable {
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<Self>) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SFSafariViewWrapper>) {
        return
    }
}

struct SettingsView: View {
    
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    @State private var showSafari: Bool = false
    
    var body: some View {
        VStack {
            List {
                Section {
                    HStack {
                        Toggle("Dark Mode", isOn: $isDarkMode)
                    } //: HSTACK
                } header: {
                    Text("Appearance")
                } //: SECTION
                Section {
                    Text("This app is developed by Peter Ahlgren.\nFreelancing Web- & App-developer.\nVisit my website here.")
                        .font(.system(size: 16, weight: .regular, design: .rounded))
                } header: {
                    Text("Developer info")
                } //: SECTION
                    .onTapGesture {
                        showSafari.toggle()
                    }
                    .fullScreenCover(isPresented: $showSafari) {
                        SFSafariViewWrapper(url: URL(string: "https://peterahlgren.com")!)
                    }
                Section {
                    HStack {
                        Image (systemName: "hand.thumbsup")
                        VStack (alignment: .leading) {
                            Text("Leave a rating")
                            Text("Support the developer's free side project!")
                                .font(.system(size: 13, weight: .regular, design: .rounded))
                        } //: VSTACK
                    } //: HSTACK
                    HStack {
                        Image (systemName: "paperplane")
                        VStack (alignment: .leading) {
                            Text("Share the app")
                            Text("Know a playful person? Send it their way.")
                                .font(.system(size: 13, weight: .regular, design: .rounded))
                        } //: VSTACK
                    } //: HSTACK
                    HStack {
                        Image (systemName: "envelope")
                        VStack (alignment: .leading) {
                            Text("Send feedback")
                            Text("Email thoughts, bugs, or questions.")
                                .font(.system(size: 13, weight: .regular, design: .rounded))
                        } //: VSTACK
                    } //: HSTACK
                } header: {
                    Text("Rating and sharing")
                } //: SECTION
                
            } //: LIST
            
            
            
        } //: VSTACK
    }
}



struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
