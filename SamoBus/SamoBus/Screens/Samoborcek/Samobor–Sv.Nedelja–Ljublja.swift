//
//  Samobor–Sv.Nedelja–Ljublja.swift
//  SamoBus
//
//  Created by Mihael Koic on 27.12.2024..
//

import SwiftUI
import PDFKit

// SwiftUI view to display PDF
struct PDFViewer4: UIViewRepresentable {
    
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

struct Samobor_Sv_Nedelja_Ljublja: View {
    // Change the name and extension to match your PDF file
    let pdfURL = Bundle.main.url(forResource: "153_1", withExtension: "pdf")!

    var body: some View {
        PDFViewer(pdfURL: pdfURL)
            .edgesIgnoringSafeArea(.all) // Ensure PDF occupies full screen
    }
}

#Preview {
    Samobor_Sv_Nedelja_Ljublja()
}
