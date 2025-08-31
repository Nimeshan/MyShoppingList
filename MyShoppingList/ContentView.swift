//
//  ContentView.swift
//  MyShoppingList
//
//  Created by Nimeshan Shanmugam on 2025-08-31.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            ShoppingListScreen()
                .navigationTitle("Shopping list")
        }
        
    }
    
}

#Preview {
    ContentView()
}
