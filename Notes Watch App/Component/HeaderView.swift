//
//  HeaderView.swift
//  Notes Watch App
//
//  Created by Elexoft on 27/02/2025.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - PROPERTIES
    
    var title: String = ""
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            // TITLE
            if title != "" {
                
            }
            
            // SEPERATOR
            HStack {
                Capsule()
                    .frame(height: 1)
                
                Image(systemName: "note.text")
                
                Capsule()
                    .frame(height: 1)
            } //: HSTACK
            .foregroundColor(.accentColor)
        } //: VSTACK
    }
}

// MARK: - PREVIEW

#Preview("Simple") {
    HeaderView()
}

#Preview("Title") {
    HeaderView(title: "Credits")
}
