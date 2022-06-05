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
    
    let appStoreURLStringForShareSheet = "https://apps.apple.com/us/app/id1627982178"
    
    let v = Bundle.main.appVersion
    
    
    @Environment(\.openURL) var openURL
    @State private var askForAttachment = false
    @State private var showEmail = false
    @State private var email = SupportEmail(toAddress: "peter@peterahlgren.com", subject: "Support Email", messageHeader: "Please describe your issue below")
    
    
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
                    .onTapGesture {
                        ReviewHandler.requestReviewManually()
                    }
                    HStack {
                        Image (systemName: "paperplane")
                        VStack (alignment: .leading) {
                            Text("Share the app")
                            Text("Know a playful person? Send it their way.")
                                .font(.system(size: 13, weight: .regular, design: .rounded))
                        } //: VSTACK
                    } //: HSTACK
                    .onTapGesture {
                        launchShareSheet()
                    }
                    HStack {
                        Image (systemName: "envelope")
                        VStack (alignment: .leading) {
                            Text("Send feedback")
                            Text("Email thoughts, bugs, or questions.")
                                .font(.system(size: 13, weight: .regular, design: .rounded))
                        } //: VSTACK
                    } //: HSTACK
                    .onTapGesture {
                        email.send(openURL: openURL)
                    }
                } header: {
                    Text("Rating and sharing")
                } //: SECTION
                
                Section {
                    VStack {
                        Image(systemName: "dice.fill")
                            .font(.system(size: 48))
                            .padding()
                        Text("Randomize Me, version: \(v)")
                        HStack {
                            Text("Crafted with ❤️ by")
                            Text("@peterahlgren")
                                .onTapGesture {
                                    showSafari.toggle()
                                }
                                .fullScreenCover(isPresented: $showSafari) {
                                    SFSafariViewWrapper(url: URL(string: "https://twitter.com/peter_ahlgren")!)
                                }
                        } //: HSTACK
                    } //: VSTACK
                } //: SECTION
                
                
            } //: LIST
            .sheet(isPresented: $showEmail) {
                MailView(supportEmail: $email) { result in
                    switch result {
                    case .success:
                        print("Email sent")
                    case .failure(let error):
                        print(error.localizedDescription)
                    }
                }
            }
            .confirmationDialog("", isPresented: $askForAttachment) {
                Button("Yes") {
                    email.data = ExampleData.data
                    if email.data == nil {
                        email.send(openURL: openURL)
                    } else {
                        if MailView.canSendMail {
                            // showEmail.toggle()
                        } else {
                            print("""
                            This device does not support email
                            \(email.body)
                            """)
                        }
                    }
                }
                Button("No") {
                    email.send(openURL: openURL)
                }
            } message: {
                Text("""
                SUPPORT EMAIL
                Include data as an attachment?
                """)
            }
            
            

        } //: VSTACK
    }
    
    func launchShareSheet() {
        guard let urlShare = URL(string: appStoreURLStringForShareSheet) else { return }
        let activityVC = UIActivityViewController(activityItems: [urlShare], applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController?.present(activityVC, animated: true, completion: nil)
    }
    
}





struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
