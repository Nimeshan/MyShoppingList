//
//  ShoppingListViewModel.swift
//  MyShoppingList
//
//  Created by Matic Oblak on 31/08/2025.
//

import SwiftUI

@Observable
class ShoppingListViewModel {
    
    private(set) var items: [ListEntry] = [ListEntry(name: "short", quantity: "5g"), ListEntry(name: "long item", quantity: "500g")]
    private(set) var selectedItem: ListEntry?
    var quantityText: String = ""
    
    func selectItem( _ item: ListEntry ) {
        selectedItem = item
        quantityText = item.quantity
    }
    
    func applyQuantityForItem( _ item: ListEntry, newQuantity: String ) {
        if let itemIndex = items.firstIndex(where: { $0.id == item.id }) {
            items[itemIndex].quantity = quantityText
        }
    }
    
    func addNewItemAtRandomPosition() {
        let newItem = ListEntry(name: "Item \(items.count + 1)", quantity: "")
        if items.isEmpty {
            items.append(newItem)
        } else {
            items.insert(newItem, at: .random(in: 0..<items.count))
        }
    }
    
}
