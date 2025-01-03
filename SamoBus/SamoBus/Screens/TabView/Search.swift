//
//  Search.swift
//  SamoBus
//
//  Created by Mihael Koic on 24.12.2024..
//


import SwiftUI

struct Search: View {
    @State private var searchText = "" // Za pohranu unesenog teksta
    @State private var filteredBuses = [String]() // Za pohranu filtriranih linija

    // Podaci za autobusne linije
    let samoborcekBuses = [
        "143 Samobor-Rude–Braslovje",
        "144 Samobor–Smerovišće–Lipovec",
        "147 Samobor–Bregana",
        "150 Samobor–Grdanjci",
        "153 Samobor–Sv.Nedelja–Ljublja...",
        "155 Samobor–Kerestinec–Zagreb...",
        "155 Samobor–Rakitje–AK Zagreb",
        "511 Samobor–Rakov Potok–Jagn...",
        "513 Samobor–Jastrebarsko",
        "517 Samobor–Galgovo– Klinča Sela",
        "518 Samobor–Sv.Nedelja–Stupnik",
        // Grad Samobor
        "S1 Ak Samobor-Kol. Naselje",
        "S2 Samobor AK – Bregana",
        "S3 Samobor AK – Mali Lipovec",
        "S4 Samobor AK – Galgovo",
        "S5 Samobor AK - Medsave",
        "S6 Samobor AK - Braslovje",
        "S7 Samobor AK - Domaslovec",
        "S8 Samobor AK - Bukovje",
        "S9 Terihaji - Molvice",
        "S10 Molvice - Sv.Martin pod Oki...",
        "S11 Pavučnjak - Sv.Martin pod Oki...",
        "S12 Bregana - Mala Jazbina",
        "S13 Samobor AK - Grdanjci",
        "S14 Grdanjci – Gornja Vas",
        "S15 Grdanjci – Jarušje",
        "S16 Samobor AK – Vrhovčak",
        "S17 Samobor AK – Slani Dol"
    ]
    
    // Podaci za gradske linije
    //let gradSamoborBuses = ["Uskoro"]
    
    // Kombiniraj obje liste za pretragu
    var allBuses: [String] {
        samoborcekBuses// + gradSamoborBuses
    }
    
    // Kreiraj funkciju koja vraća odgovarajući View za bus
    func busDetailView(bus: String) -> AnyView {
        switch bus {
        case "143 Samobor-Rude–Braslovje":
            return AnyView(Samobor_Rude_Braslovlje()) // Zamijeni s tvojim specifičnim view
        
        case "144 Samobor–Smerovišće–Lipovec":
            return AnyView(Samobor_Smerovis_c_e_Lipovec()) // Zamijeni s tvojim specifičnim view
        
        case "147 Samobor–Bregana":
            return AnyView(Samobor_Bregana()) // Zamijeni s tvojim specifičnim view
            
        case "150 Samobor–Grdanjci":
            return AnyView(Samobor___Grdanjci()) // Zamijeni s tvojim specifičnim view
            
        case "153 Samobor–Sv.Nedelja–Ljublja...":
            return AnyView(Samobor_Sv_Nedelja_Ljublja()) // Zamijeni s tvojim specifičnim view
            
        case "155 Samobor–Kerestinec–Zagreb...":
            return AnyView(Samobor_Kerestinec_Zagreb()) // Zamijeni s tvojim specifičnim view
            
        case "155 Samobor–Rakitje–AK Zagreb":
            return AnyView(Samobor_Rakitje_AK_Zagreb()) // Zamijeni s tvojim specifičnim view
            
        case "511 Samobor–Rakov Potok–Jagn...":
            return AnyView(Samobor_Rakov_Potok_Jagn()) // Zamijeni s tvojim specifičnim view
        
        case "513 Samobor–Jastrebarsko":
            return AnyView(Samobor_Jastrebarsko()) // Zamijeni s tvojim specifičnim view
            
        case "Samobor–Galgovo– Klinča Sela":
            return AnyView(Samobor_Galgovo_Klinc_a_Sela()) // Zamijeni s tvojim specifičnim view

        case "518 Samobor–Sv.Nedelja–Stupnik":
            return AnyView(Samobor_Sv_Nedelja_Stupnik()) // Zamijeni s tvojim specifičnim view
            
        case "517 Samobor–Galgovo– Klinča Sela":
            return AnyView(Samobor_Galgovo_Klinc_a_Sela()) // Zamijeni s tvojim specifičnim view
            
        // Grad Samobor
        case "S1 Ak Samobor-Kol. Naselje":
            return AnyView(S1_Ak_Samobor_Kol__Naselje()) // Zamijeni s tvojim specifičnim view

        

            
        // Dodaj ostale slučajeve prema potrebi
        default:
            return AnyView(Text("Detalji nisu dostupni za ovu liniju"))
        }
    }

    var body: some View {
        NavigationStack {
            VStack {
                List(filteredBuses, id: \.self) { bus in
                    NavigationLink(destination: busDetailView(bus: bus)) {
                        HStack {
                            Image(systemName: "bus.fill")
                            Text(bus)
                                .cornerRadius(10)
                        }
                    }
                }
            }
            .searchable(text: $searchText, prompt: "Pretraži autobusne linije")
            .onChange(of: searchText) { newValue in
                if newValue.isEmpty {
                    filteredBuses = allBuses
                } else {
                    filteredBuses = allBuses.filter { $0.lowercased().contains(newValue.lowercased()) }
                }
            }
            .onAppear {
                // Inicijalno postavi sve linije na filtrirane
                filteredBuses = allBuses
            }
            .navigationTitle("Search")
        }
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}



#Preview {
    Search()
}
