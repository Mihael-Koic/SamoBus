//
//  OnboardingPage4.swift
//  SamoBus
//
//  Created by Mihael Koic on 03.01.2025..
//

import SwiftUI

struct OnboardingPage4: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "bell.badge")
                .resizable()
                .scaledToFit()
                .frame(height: 140)
                .foregroundColor(.orange)
                .padding(50)
            
            Text("Obavijesti 🔔")
                .font(.largeTitle)
                .bold()
            
            Text("Saznajte najnovije informacije i ažuriranja putem obavijesti unutar aplikacije. \n\n Posjetite odjeljak 'Notifications' kako biste pratili važne novosti vezane uz vozni red ili nove funkcionalnosti.")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
        }
        .padding()
    }
}

#Preview {
    OnboardingPage4()
}
