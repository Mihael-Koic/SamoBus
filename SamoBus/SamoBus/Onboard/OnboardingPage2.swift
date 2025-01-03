//
//  OnboardingPage2.swift
//  SamoBus
//
//  Created by Mihael Koic on 02.01.2025..
//

import SwiftUI

struct OnboardingPage2: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "book")
                .resizable()
                .scaledToFit()
                .frame(height: 140)
                .foregroundColor(.orange)
                .padding(67)
            
            Text("Pregled voznog reda")
                .font(.largeTitle)
                .bold()
            
            Text("Pregledajte vozni red u PDF formatu unutar aplikacije. \n\n Jednostavno pregledajte i pratite sve informacije o polascima i dolascima. ⏰")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
        }
        .padding()
    }
}

#Preview {
    OnboardingPage2()
}
