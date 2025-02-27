//
//  CreditsView.swift
//  Notes Watch App
//
//  Created by Elexoft on 27/02/2025.
//

import SwiftUI

struct CreditsView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        VStack(spacing: 3) {
            // PROFILE IMAGE
            // HEADER
            HeaderView(title: "Credits")
            
            // CONTENT
            Text("Robert Petras")
                .foregroundColor(.primary)
                .fontWeight(.bold)
            
            Text("Developer")
                .font(.footnote)
                .foregroundColor(.secondary)
                .fontWeight(.light)
        } //: VSTACK
    }
}

// MARK: - PREVIEW

#Preview {
    CreditsView()
}
