//
//  ContentView.swift
//  SamoBus
//
//  Created by Mihael Koic on 24.12.2024..
//

import SwiftUI
import WishKit
import WebKit

struct ContentView: View {
    @AppStorage("isWelcomeSheetShowing") var isWelcomeSheetShowing = true
        @State private var showOnboarding: Bool = true
    init() {
        WishKit.configure(with: "C8D42948-0259-4309-97C3-DC7345D77968")
        WishKit.config.buttons.addButton.bottomPadding = .small
        WishKit.config.allowUndoVote = true
        WishKit.config.commentSection = .hide
        WishKit.config.statusBadge = .show
        WishKit.theme.primaryColor = .orange
        WishKit.config.buttons.saveButton.textColor = .set(light: .black, dark: .white)
        WishKit.config.buttons.segmentedControl.display = .show
        WishKit.config.statusBadge = .show
    }
    
    var body: some View {
        NavigationStack {
            TabView {
                Home()
                    .tabItem {
                        Image(systemName: "bus")
                        Text("Bus")
                    }
                
                Search()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                
                SafariView1(url: URL(string: "https://www.samoborcek.hr/category/obavijesti/")!)
                    .tabItem {
                        Image(systemName: "bell.fill")
                        Text("Notifications")
                    }
                
                Settings()
                    .tabItem {
                        Image(systemName: "gearshape")
                        Text("Settings")
                    }
            }
        }
        .accentColor(Color.orange)
        .sheet(isPresented: $isWelcomeSheetShowing) {
            OnboardingView()
                .interactiveDismissDisabled()
        }
    }
}

struct SafariView1: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> UIView {
        let containerView = UIView()

        let webView = WKWebView()
        webView.navigationDelegate = context.coordinator
        webView.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(webView)

        let backButton = UIButton(type: .system)
        backButton.setTitle("<-- Nazad", for: .normal)
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.addTarget(context.coordinator, action: #selector(Coordinator.goBack), for: .touchUpInside)
        containerView.addSubview(backButton)

        // Layout constraints
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: containerView.safeAreaLayoutGuide.topAnchor),
            backButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10),
            webView.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 10),
            webView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            webView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            webView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor)
        ])

        let request = URLRequest(url: url)
        webView.load(request)

        context.coordinator.webView = webView
        return containerView
    }

    func updateUIView(_ uiView: UIView, context: Context) {
        if let webView = context.coordinator.webView {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }

    func makeCoordinator() -> Coordinator {
        Coordinator()
    }

    class Coordinator: NSObject, WKNavigationDelegate {
        var webView: WKWebView?

        @objc func goBack() {
            webView?.goBack()
        }
    }
}

#Preview {
    ContentView()
}

