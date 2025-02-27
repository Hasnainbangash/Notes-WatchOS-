//
//  ContentView.swift
//  Notes Watch App
//
//  Created by Elexoft on 27/02/2025.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    @State private var notes: [Note] = [Note]()
    @State private var text: String = ""
    
    // MARK: - FUNCTION
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: 6) {
                TextField("Add New Note", text: $text)
                
                Button {
                    // ACTION
                } label: {
                    Image(systemName: "plus")
                }
                .fixedSize()
            } //: HSTACK
        } //: VTSACK
        .navigationTitle("Notes")
    }
}

// MARK: - PREVIEW

#Preview {
    ContentView()
}
