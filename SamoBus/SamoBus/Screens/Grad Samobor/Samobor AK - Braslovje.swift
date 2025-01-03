//
//  Samobor AK - Braslovje.swift
//  SamoBus
//
//  Created by Mihael Koic on 02.01.2025..
//

import SwiftUI
import PDFKit

// SwiftUI view to display PDF
struct PDFViewer17: UIViewRepresentable {
    
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

struct Samobor_AK___Braslovje: View {
    // Change the name and extension to match your PDF file
    let pdfURL = Bundle.main.url(forResource: "s6", withExtension: "pdf")!

    var body: some View {
        PDFViewer(pdfURL: pdfURL)
            .edgesIgnoringSafeArea(.all) // Ensure PDF occupies full screen
    }
}

#Preview {
    Samobor_AK___Braslovje()
}
