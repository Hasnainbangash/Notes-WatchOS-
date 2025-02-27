//
//  Note.swift
//  Notes Watch App
//
//  Created by Elexoft on 27/02/2025.
//

import Foundation

struct Note: Codable, Identifiable {
    let id: UUID
    let text: String
}
