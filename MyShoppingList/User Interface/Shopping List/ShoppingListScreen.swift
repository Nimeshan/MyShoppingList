//
//  ShoppingListScreen.swift
//  MyShoppingList
//
//  Created by Matic Oblak on 31/08/2025.
//

import SwiftUI

struct ShoppingListScreen: View {
    
    @State var viewModel = ShoppingListViewModel()
    
    var body: some View {
        VStack {
            List {
                ForEach(viewModel.items) { item in
                    cellView(item: item)
                }
            }
            
            if let selectedItem = viewModel.selectedItem {
                quantityForm(selectedItem: selectedItem)
                    .padding(.horizontal)
            }
            
            toolsView()
        }
        .animation(.default, value: viewModel.items)
    }
    
    private func cellView(item: ListEntry) -> some View {
        HStack {
            Text(item.name)
            Spacer()
            Text(item.quantity)
        }
        .onTapGesture {
            viewModel.selectItem(item)
        }
    }
    
    private func quantityForm(selectedItem: ListEntry) -> some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                Text("Quantity for \(selectedItem.name):")
                TextField("Amount", text: $viewModel.quantityText)
                    .textFieldStyle(.roundedBorder)
            }
            Button("Apply") {
                viewModel.applyQuantityForItem(selectedItem,
                                               newQuantity: viewModel.quantityText)
            }
        }
    }
    
    private func toolsView() -> some View {
        Button("Add item") {
            viewModel.addNewItemAtRandomPosition()
        }
    }
    
}

#Preview {
    ShoppingListScreen()
}
