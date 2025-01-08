//
//  AboutApp.swift
//  SamoBus
//
//  Created by Mihael Koic on 27.12.2024..
//

import SwiftUI

struct AboutApp: View {
    var body: some View {
        NavigationStack {
            Form {
                VStack {
                    Image("Samo Bus Logo")
                        .resizable()
                        .frame(width: 210, height: 210)
                        .padding(.bottom)
                    
                    Text("SamoBus je praktična mobilna aplikacija osmišljena kako bi korisnicima olakšala pristup svim informacijama o javnom prijevozu u Samoboru i okolici. Sve informacije unutar aplikacije preuzete su izravno sa službenih web stranica www.samoborcek.hr, čime se osigurava ažurnost i točnost podataka. Za dodatne upite ili provjere preporučuje se kontaktirati službenu podršku Samoborčeka putem njihove web stranice.😃")
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                }
            }
        }
    }
}

#Preview {
    AboutApp()
}
