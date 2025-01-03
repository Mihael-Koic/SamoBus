//
//  Settings.swift
//  SamoBus
//
//  Created by Mihael Koic on 24.12.2024..
//

import SwiftUI
import WishKit
import UserNotifications

struct Settings: View {
    @State private var isWishKitPresented = false // Kontrola za sheet
    @AppStorage("selectedTheme") private var selectedTheme: String = "system" // Dark Mode
    @AppStorage("notificationsEnabled") private var notificationsEnabled: Bool = true // Kontrola za obavijesti

    var body: some View {
        NavigationStack {
            ZStack {
                Form {
                    Section("Support") {
                        // Otvaranje WishKit-a pomoću sheet-a
                        Button {
                            isWishKitPresented = true
                        } label: {
                            Label("Feature Requests", systemImage: "lightbulb.max.fill")
                        }

                        NavigationLink(destination: Contacts()) {
                            Image(systemName: "person.fill")
                                .foregroundColor(.blue)
                            Text("Contacts")
                        }
                    }

                    Section("Theme") {
                        Picker("Appearance", selection: $selectedTheme) {
                            Text("System").tag("system")
                            Text("Light").tag("light")
                            Text("Dark").tag("dark")
                        }
                        .pickerStyle(SegmentedPickerStyle())
                    }

                    // Novi odjeljak za obavijesti
                    Section("Notifications") {
                        Toggle("Enable Notifications", isOn: $notificationsEnabled)
                            .onChange(of: notificationsEnabled) {
                                if !$0 {
                                    UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
                                } else {
                                    requestNotificationPermission()
                                }
                            }
                    }
                    
                    Section("About") {
                        NavigationLink(destination: AboutApp()) {
                            Image(systemName: "iphone.badge.exclamationmark")
                                .foregroundColor(.blue)
                            Text("About App")
                        }
                    }
                }
                .navigationTitle("Settings")
                .toolbar(.visible, for: .tabBar)

                Section {
                    Text("Version 1.0")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .padding(.top, 499)
                }
            }
        }

        // Sheet za WishKit
        .sheet(isPresented: $isWishKitPresented) {
            NavigationStack {
                WishKit.FeedbackListView()
                    .navigationTitle("Feature Requests")
                    .foregroundColor(.blue)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button("Close") {
                                isWishKitPresented = false
                            }
                        }
                    }
            }
        }
    }

    // Funkcija za zahtjev dozvole za obavijesti
    private func requestNotificationPermission() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
            if let error = error {
                print("Error requesting notification permission: \(error)")
            } else {
                print("Notification permission granted: \(granted)")
            }
        }
    }
}

#Preview {
    Settings()
}
