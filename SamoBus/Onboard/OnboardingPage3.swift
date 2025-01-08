//
//  OnboardingPage3.swift
//  SamoBus
//
//  Created by Mihael Koic on 03.01.2025..
//

import SwiftUI

struct OnboardingPage3: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "lightbulb.max")
                .resizable()
                .scaledToFit()
                .frame(height: 140)
                .foregroundColor(.orange)
                .padding(50)
            
            Text("Feature Request")
                .font(.largeTitle)
                .bold()
            
            Text("Imate prijedlog za novu funkcionalnost? Pomoću 'Feature Request' opcije, podijelite svoje ideje s nama! \n\n Da biste poslali zahtjev, jednostavno otvorite postavke i kliknite na 'Feature Request'.")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
        }
        .padding()
    }
}

#Preview {
    OnboardingPage3()
}
