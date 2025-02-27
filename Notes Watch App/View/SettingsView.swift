//
//  SettingsView.swift
//  Notes Watch App
//
//  Created by Elexoft on 27/02/2025.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    
    @AppStorage("lineCount") var lineCount: Int = 1
    
    // MARK: - BODY
    
    var body: some View {
        VStack(spacing: 8) {
            // HEADER
            HeaderView(title: "Settings")
            
            // ACTUAL LINE COUNT
            Text("Lines: \(lineCount)".uppercased())
                .fontWeight(.bold)
            
            // SLIDER
            
            
        } //: VSTACK
    }
}

// MARK: - PREVIEW

#Preview {
    SettingsView()
}
