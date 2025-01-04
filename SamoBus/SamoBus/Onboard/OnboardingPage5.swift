//
//  OnboardingPage3.swift
//  SamoBus
//
//  Created by Mihael Koic on 02.01.2025..
//

import SwiftUI

struct OnboardingPage5: View {
    @Environment(\.dismiss) private var dismiss
    @AppStorage("hasSeenOnboarding") private var hasSeenOnboarding: Bool = false

    var body: some View {
        VStack(spacing: 20) {
            Image("Samo Bus Logo")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .padding(.top, 90)
            
            Text("Započnimo! 😃")
                .font(.largeTitle)
                .bold()
            
            Text("Započnite svoje putovanje sada i budite korak ispred – vaš vozni red je samo jedan klik daleko!")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            Button(action: {
                hasSeenOnboarding = true
                dismiss() // Zatvara sheet
            }) {
                Text("Spremni za početak? 🤔")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.top, 70)
            }
            .padding(.horizontal)
        }
        .padding()
    }
}

#Preview {
    OnboardingPage5()
}

