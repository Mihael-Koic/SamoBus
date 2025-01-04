import SwiftUI
import UserNotifications
import WishKit
import GoogleMobileAds

@main
struct SamoBusApp: App {
    @AppStorage("selectedTheme") private var selectedTheme: String = "system"
    @AppStorage("notificationsEnabled") private var notificationsEnabled: Bool = true
    @Environment(\.scenePhase) private var scenePhase
    @StateObject private var appState = AppState()

    init() {
        WishKit.configure(with: "C8D42948-0259-4309-97C3-DC7345D77968")
        GADMobileAds.sharedInstance().start(completionHandler: nil)
    }

    var body: some Scene {
        WindowGroup {
            SplashScreenView()
            
                .preferredColorScheme(selectedTheme == "light" ? .light : selectedTheme == "dark" ? .dark : nil)
                .onAppear {
                    if notificationsEnabled {
                        requestNotificationPermission()
                    }
                }
                .onChange(of: scenePhase) { newPhase in
                    // Provjerava fazu aplikacije i upravlja obavijestima
                    handleScenePhaseChange(newPhase)
                }
        }
    }

    private func requestNotificationPermission() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
            if let error = error {
                print("Error requesting notification permission: \(error)")
            } else {
                print("Notification permission granted: \(granted)")
            }
        }
    }

    private func handleScenePhaseChange(_ newPhase: ScenePhase) {
        switch newPhase {
        case .inactive:
            // Pohranjujemo vrijeme izlaska aplikacije
            appState.lastExitTime = Date()
            if notificationsEnabled {
                scheduleNotificationIfNeeded()
            }
        case .active:
            // Brisanje svih pending notifikacija kad aplikacija postane aktivna
            UNUserNotificationCenter.current().removePendingNotificationRequests(withIdentifiers: ["inactiveNotification"])
            appState.lastExitTime = nil
        default:
            break
        }
    }

    private func scheduleNotificationIfNeeded(after timeInterval: TimeInterval = 1300) {
        let content = UNMutableNotificationContent()
        content.title = "‼️ Hej, Ti! ‼️"
        content.body = "Nemoj zakasniti na bus, provjeri kad ti ide 😃"
        content.sound = .default

        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: timeInterval, repeats: false)
        let request = UNNotificationRequest(identifier: "inactiveNotification", content: content, trigger: trigger)

        UNUserNotificationCenter.current().add(request) { error in
            if let error = error {
                print("Error scheduling notification: \(error)")
            } else {
                print("Notification scheduled successfully")
            }
        }
    }
}

class AppState: ObservableObject {
    @Published var lastExitTime: Date?
}
