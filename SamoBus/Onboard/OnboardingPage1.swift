//
//  OnboardingPage1.swift
//  SamoBus
//
//  Created by Mihael Koic on 02.01.2025..
//

import SwiftUI

struct OnboardingPage1: View {
    var body: some View {
        VStack(spacing: 20) {
            Image("Samo Bus Logo")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .padding(40)
            
            Text("Dobrodošli!")
                .font(.largeTitle)
                .bold()
            
            Text("Dobrodošli u SamoBus – vaša jednostavna aplikacija za praćenje autobusnog voznog reda! 😃")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
        }
        .padding()
    }
}

#Preview {
    OnboardingPage1()
}
