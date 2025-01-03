//
//  Contacts.swift
//  SamoBus
//
//  Created by Mihael Koic on 24.12.2024..
//

import SwiftUI

struct Contacts: View {
    var body: some View {
        NavigationStack {
            VStack {
                Section {
                    Image("Mihael")
                        .resizable()
                        .frame(width: 220, height: 220)
                        .clipShape(Circle())
                        .shadow(radius: 20.0)
                        .overlay(Circle().stroke(Gradient(colors: [.orange,.red]), lineWidth: 4.0))
                        .padding(.top)
                        
                        .padding(20)
                    Divider()
                        .frame(width: 350, height: 0.80)
                        .background(Color.gray)
                    
                    Text("Hi, I'm Mihael, the developer behind this app. You can find and contact me there 👇")
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    List {
                        NavigationLink(destination: SafariView(url: URL(string: "https://instagram.com/mihael_koic")!)) {
                            
                            HStack {
                                Label("Instagram", systemImage: "camera")
                                Spacer()
                                Image(systemName: "Link")
                            }
                        }
                        
                        NavigationLink(destination: SafariView(url: URL(string: "https://x.com/M1haelKoic")!)) {
                            
                            HStack {
                                Label("Twiter", systemImage: "text.bubble")
                                Spacer()
                                Image(systemName: "Link")
                            }
                        }
                        
                        NavigationLink(destination: SafariView(url: URL(string: "https://youtube.com/@MihaelKoic")!)) {
                            
                            HStack {
                                Label("Youtube", systemImage: "play")
                                Spacer()
                                Image(systemName: "Link")
                            }
                        }
                    }
                    .accentColor(Color.blue)
                }
            }
        }
    }
}

#Preview {
    Contacts()
}
