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
    
    @State private var isCreditsPresented: Bool = false
    @State private var isSettingsPresented: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        VStack(alignment: .center, spacing: 3) {
            // HEADER
            HeaderView(title: "")
            
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
            HStack(alignment: .center) {
                Image(systemName: "gear")
                    .imageScale(.large)
                    .onTapGesture {
                        isSettingsPresented.toggle()
                    }
                    .sheet(isPresented: $isSettingsPresented, content: {
                        SettingsView()
                    })
                
                Spacer()
                
                Text("\(count) / \(index + 1)")
                
                Spacer()
                
                Image(systemName: "info.circle")
                    .imageScale(.large)
                    .onTapGesture {
                        isCreditsPresented.toggle()
                    }
                    .sheet(isPresented: $isCreditsPresented, content: {
                        CreditsView()
                    })
            } //: HSTACK
            .foregroundColor(.secondary)
            
        } //: VSTACK
        .padding(3)
    }
}

// MARK: - PREVIEW

#Preview {
    let sampleData: Note = Note(id: UUID(), text: "Hello, World!")
    DetailView(note: sampleData, count: 5, index: 1)
}
