//
//  144-Samobor–Smerovišće–Lipovec.swift
//  SamoBus
//
//  Created by Mihael Koic on 25.12.2024..
//

import SwiftUI
import PDFKit

// SwiftUI view to display PDF
struct PDFViewer1: UIViewRepresentable {
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

struct Samobor_Smerovis_c_e_Lipovec: View {
    // Change the name and extension to match your PDF file
    let pdfURL = Bundle.main.url(forResource: "144", withExtension: "pdf")!

    var body: some View {
        PDFViewer(pdfURL: pdfURL)
            .edgesIgnoringSafeArea(.all) // Ensure PDF occupies full screen
    }
}
#Preview {
    Samobor_Smerovis_c_e_Lipovec()
}
