//
//  ListEntry.swift
//  MyShoppingList
//
//  Created by Matic Oblak on 31/08/2025.
//

import Foundation

struct ListEntry: Identifiable, Equatable {
    let id: String = UUID().uuidString
    
    let name: String
    var quantity: String
}
