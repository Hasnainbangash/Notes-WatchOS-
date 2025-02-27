//
//  DetailView.swift
//  Notes Watch App
//
//  Created by Elexoft on 27/02/2025.
//

import SwiftUI

struct DetailView: View {
    // MARK: - PROPERTIES
    
    let note: Note
    let count: Int
    let index: Int
    
    // MARK: - BODY
    
    var body: some View {
        VStack(alignment: .center, spacing: 3) {
            // HEADER
            HStack {
                Capsule()
                    .frame(height: 1)
                
                Image(systemName: "note.text")
                
                Capsule()
                    .frame(height: 1)
            }
            .foregroundColor(.accentColor)
            
            // CONTENT
            Spacer()
            
            ScrollView(.vertical) {
                Text(note.text)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
            }
            
            Spacer()
            
            // FOOTER
            
            
        } //: VSTACK
        .padding(3)
    }
}

// MARK: - PREVIEW

#Preview {
    let sampleData: Note = Note(id: UUID(), text: "Hello, World!")
    DetailView(note: sampleData, count: 5, index: 1)
}
