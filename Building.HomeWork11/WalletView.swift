//
//  WalletView.swift
//  Building.HomeWork11
//
//  Created by Авазбек Надырбек уулу on 21.09.25.
//

import SwiftUI

struct Item: Identifiable {
    let id: UUID = UUID()
    let name: String
}

struct WalletView: View {
    
    @State var itemName: String = ""
    @State private var items: [Item] = [Item(name: "Hello")]
    
    var body: some View {
        NavigationView {
            VStack {
               
                AddItemNew(itemName: $itemName, onAdd: addItem)
                ItemListView(items: items)
            }
            .padding() 
            .navigationTitle("Wallet")
        }
    }
    
    func addItem() {
        items.append(Item(name: itemName))
        itemName = ""
    }
}

struct AddItemNew: View {
    
    @Binding var itemName: String
    
    let onAdd: () -> Void
    
    var body: some View {
        HStack {
            TextField("Search", text: $itemName)
                .textFieldStyle(.roundedBorder)
                .padding()
                .background(.blue)
                .cornerRadius(20)
            Button {
//                addItem()
                onAdd()
            } label: {
                
                Text("Add")
                    .padding(10)
                    .padding(.horizontal, 10)
                    .glassEffect()
            }
            
        }
    }
}

struct ItemListView: View {
    
    let items: [Item]
    
    var body: some View {
        List(items) { item in
            Text(item.name)
        }
    }
}

#Preview {
    WalletView()
}
