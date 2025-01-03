//
//  Molvice - Sv.Martin pod Oki.swift
//  SamoBus
//
//  Created by Mihael Koic on 02.01.2025..
//

import SwiftUI
import PDFKit

// SwiftUI view to display PDF
struct PDFViewer21: UIViewRepresentable {
    
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

struct Molvice___Sv_Martin_pod_Oki: View {
    // Change the name and extension to match your PDF file
    let pdfURL = Bundle.main.url(forResource: "s10", withExtension: "pdf")!

    var body: some View {
        PDFViewer(pdfURL: pdfURL)
            .edgesIgnoringSafeArea(.all) // Ensure PDF occupies full screen
    }
}

#Preview {
    Molvice___Sv_Martin_pod_Oki()
}
