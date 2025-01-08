//
//  Karta-linija.swift
//  SamoBus
//
//  Created by Mihael Koic on 01.01.2025..
//

import SwiftUI
import PDFKit

// SwiftUI view to display PDF
struct PDFViewer11: UIViewRepresentable {
    
    let pdfURL: URL

    func makeUIView(context: Context) -> PDFView {
        let pdfView = PDFView()
        pdfView.autoScales = true // Automatically scale the PDF
        return pdfView
    }

    func updateUIView(_ uiView: PDFView, context: Context) {
        if let document = PDFDocument(url: pdfURL) {
            uiView.document = document // Load the PDF document
        }
    }
}

struct Karta_linija: View {
    // Change the name and extension to match your PDF file
    let pdfURL = Bundle.main.url(forResource: "karta-linija", withExtension: "pdf")!

    var body: some View {
        PDFViewer(pdfURL: pdfURL)
            .edgesIgnoringSafeArea(.all) // Ensure PDF occupies full screen
    }
}
#Preview {
    Karta_linija()
}
