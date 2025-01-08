//
//  Home.swift
//  SamoBus
//
//  Created by Mihael Koic on 24.12.2024..
//

import SwiftUI
import GoogleMobileAds

struct Home: View {
    @State private var refreshTrigger = false
    var body: some View {
        NavigationStack {
            ZStack{
                Form {
                    Section("Grad Samobor") {
                        NavigationLink(destination: Karta_linija()) {
                            Image(systemName: "map.fill")
                                .foregroundColor(.blue)
                            Text("Karta Linija Autobusa")
                                .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: S1_Ak_Samobor_Kol__Naselje()) {
                            Image(systemName: "bus.fill")
                            Image(systemName: "repeat.circle")
                                .foregroundStyle(Color.orange)
                            Text("S1 Ak Samobor - Kol. Naselje")
                                .foregroundStyle(Color.red)
                                .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: Samobor_AK_Bregana()) {
                            Image(systemName: "bus.fill")
                            Text("S2 Samobor AK – Bregana")
                                .foregroundStyle(Color(red: 168/255, green: 208/255, blue: 75/255))
                                .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: Samobor_AK_Galgovo()) {
                            Image(systemName: "bus.fill")
                            Text("S3 Samobor AK – Mali Lipovec")
                                .foregroundStyle(Color(red: 0/255, green: 113/255, blue: 188/255))
                                .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: Samobor_AK_Mali__Lipovec()) {
                            Image(systemName: "bus.fill")
                            Text("S4 Samobor AK – Galgovo")
                                .foregroundStyle(Color(red: 241/255, green: 90/255, blue: 36/255))
                                .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: Samobor_AK___Medsave()) {
                            Image(systemName: "bus.fill")
                            Text("S5 Samobor AK - Medsave")
                                .foregroundStyle(Color(red: 4/255, green: 70/255, blue: 52/255))
                                .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: Samobor_AK___Braslovje()) {
                            Image(systemName: "bus.fill")
                            Text("S6 Samobor AK - Braslovje")
                                .foregroundStyle(Color(red: 148/255, green: 43/255, blue: 144/255))
                                .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: Samobor_AK___Domaslovec()) {
                            Image(systemName: "bus.fill")
                            Text("S7 Samobor AK - Domaslovec")
                                .foregroundStyle(Color(red: 140/255, green: 98/255, blue: 57/255))
                                .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: Samobor_AK___Bukovje()) {
                            Image(systemName: "bus.fill")
                            Text("S8 Samobor AK - Bukovje")
                                .foregroundStyle(Color(red: 40/255, green: 171/255, blue: 226/255))
                                .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: Terihaji___Molvice()) {
                            Image(systemName: "bus.fill")
                            Text("S9 Terihaji - Molvice")
                                .foregroundStyle(Color(red: 102/255, green: 45/255, blue: 145/255))
                                .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: Molvice___Sv_Martin_pod_Oki()) {
                            Image(systemName: "bus.fill")
                            Text("S10 Molvice - Sv.Martin pod Oki...")
                                .foregroundStyle(Color(red: 147/255, green: 42/255, blue: 143/255))
                                .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: Pavuc_njak___Sv_Martin_pod_Oki()) {
                            Image(systemName: "bus.fill")
                            Text("S11 Pavučnjak - Sv.Martin pod Oki...")
                                .foregroundStyle(Color(red: 212/255, green: 42/255, blue: 91/255))
                                .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: Bregana___Mala_Jazbina()) {
                            Image(systemName: "bus.fill")
                            Image(systemName: "repeat.circle")
                                .foregroundStyle(Color.orange)
                            Text("S12 Bregana - Mala Jazbina")
                                .foregroundStyle(Color(red: 218/255, green: 224/255, blue: 34/255))
                                .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: Samobor_AK___Grdanjci()) {
                            Image(systemName: "bus.fill")
                            Text("S13 Samobor AK - Grdanjci")
                                .foregroundStyle(Color(red: 9/255, green: 246/255, blue: 91/255))
                                .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: Grdanjci___Gornja_Vas()) {
                            Image(systemName: "bus.fill")
                            Text("S14 Grdanjci – Gornja Vas")
                                .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: Grdanjci___Jarus_je()) {
                            Image(systemName: "bus.fill")
                            Text("S15 Grdanjci – Jarušje")
                                .foregroundStyle(Color(red: 179/255, green: 179/255, blue: 179/255))
                                .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: Samobor_AK___Vrhovc_ak()) {
                            Image(systemName: "bus.fill")
                            Text("S16 Samobor AK – Vrhovčak")
                                .foregroundStyle(Color(red: 231/255, green: 155/255, blue: 0/255))
                                .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: Samobor_AK___Slani_Dol()) {
                            Image(systemName: "bus.fill")
                            Text("S17 Samobor AK – Slani Dol")
                                .foregroundStyle(Color(red: 0/255, green: 106/255, blue: 157/255))
                                .cornerRadius(10)
                        }
                        
                    }
                    // Vozni red samobora
                    Section("Samoborcek") { //Text("bus") zamjeni s Bus() - ovisi kao si nazvo dadoteku
                        NavigationLink(destination: Samobor_Rude_Braslovlje()) {
                            Image(systemName: "bus.fill")
                            Text("143 Samobor-Rude–Braslovje")
                                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.purple, .red]), startPoint: .leading, endPoint: .trailing))
                                .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: Samobor_Smerovis_c_e_Lipovec()) {
                            Image(systemName: "bus.fill")
                            Text("144 Samobor–Smerovišće–Lipovec")
                                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.purple, .red]), startPoint: .leading, endPoint: .trailing))
                                .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: Samobor_Bregana()) {
                            Image(systemName: "bus.fill")
                            Text("147 Samobor–Bregana")
                                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.purple, .red]), startPoint: .leading, endPoint: .trailing))
                                .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: Samobor___Grdanjci()) {
                            Image(systemName: "bus.fill")
                            Text("150 Samobor – Grdanjci")
                                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.purple, .red]), startPoint: .leading, endPoint: .trailing))
                                .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: Samobor_Sv_Nedelja_Ljublja()) {
                            Image(systemName: "bus.fill")
                            Text("153 Samobor–Sv.Nedelja–Ljublja...")
                                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.purple, .red]), startPoint: .leading, endPoint: .trailing))
                                .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: Samobor_Kerestinec_Zagreb()) {
                            Image(systemName: "bus.fill")
                            Text("155 Samobor–Kerestinec–Zagreb...")
                                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.purple, .red]), startPoint: .leading, endPoint: .trailing))
                                .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: Samobor_Rakitje_AK_Zagreb()) {
                            Image(systemName: "bus.fill")
                            Text("155 Samobor–Rakitje–AK Zagreb")
                                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.purple, .red]), startPoint: .leading, endPoint: .trailing))
                                .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: Samobor_Rakov_Potok_Jagn()) {
                            Image(systemName: "bus.fill")
                            Text("511 Samobor–Rakov Potok–Jagn...")
                                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.purple, .red]), startPoint: .leading, endPoint: .trailing))
                                .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: Samobor_Jastrebarsko()) {
                            Image(systemName: "bus.fill")
                            Text("513 Samobor Jastrebarsko")
                                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.purple, .red]), startPoint: .leading, endPoint: .trailing))
                                .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: Samobor_Galgovo_Klinc_a_Sela()) {
                            Image(systemName: "bus.fill")
                            Text("517 Samobor–Galgovo–Klinča Sela")
                                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.purple, .red]), startPoint: .leading, endPoint: .trailing))
                                .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: Samobor_Sv_Nedelja_Stupnik()) {
                            Image(systemName: "bus.fill")
                            Text("518 Samobor–Sv.Nedelja–Stupnik")
                                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.purple, .red]), startPoint: .leading, endPoint: .trailing))
                                .cornerRadius(10)
                        }
                    }
                }
                SnowfallView()
                    .allowsHitTesting(false)
                    .edgesIgnoringSafeArea(.all)
            }
            .navigationTitle(Text("Timetable"))

            // Prikaz banner oglasa s automatskim osvježavanjem
            BannerAdView(adUnitID: "ca-app-pub-6009329907129711/5618221439", refreshTrigger: $refreshTrigger)
                    .frame(width: 320, height: 50)
                    
                    .onAppear {
                // Pokreće timer za osvježavanje bannera
                Timer.scheduledTimer(withTimeInterval: 60, repeats: true) { _ in
                    refreshTrigger.toggle()
                }
            }
        }
    }
}

#Preview {
    Home()
}
