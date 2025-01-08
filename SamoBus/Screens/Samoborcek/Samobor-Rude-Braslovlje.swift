//
//  Samobor-Rude-Braslovlje.swift
//  SamoBus
//
//  Created by Mihael Koic on 24.12.2024..
//

import SwiftUI
import PDFKit

// SwiftUI view to display PDF
struct PDFViewer: UIViewRepresentable {
    
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

struct Samobor_Rude_Braslovlje: View {
    // Change the name and extension to match your PDF file
    let pdfURL = Bundle.main.url(forResource: "143", withExtension: "pdf")!

    var body: some View {
        PDFViewer(pdfURL: pdfURL)
            .edgesIgnoringSafeArea(.all) // Ensure PDF occupies full screen
    }
}

#Preview {
    Samobor_Rude_Braslovlje()
}
