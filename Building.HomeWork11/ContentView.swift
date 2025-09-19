//
//  ContentView.swift
//  Building.HomeWork11
//
//  Created by Авазбек Надырбек уулу on 14.09.25.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText: String = ""
    @Environment(\.dismiss) var dismiss
    
    @State private var widgetData = WidgetItemData.mockData()
    var body: some View {
        NavigationStack {
            ZStack {
                Color.white.opacity(0.1)
                    .ignoresSafeArea() // Extends to edges
                
                ScrollView {
                    VStack(alignment: .leading) {
                        VStack(alignment: .leading,spacing: 15) {
                            PageHeader()
                            SearchView()
                            BannerView()
                            HStack(spacing: 10) {
                                ForEach(widgetData) { widget in
                                    WidgetView(item: widget)
                                }
                            }
                        }
                        
                    }
                }
                .padding(.horizontal, 15)
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Menu", systemImage: "line.horizontal.3") {
                        
                    }
                }
                ToolbarSpacer(.fixed, placement: .topBarLeading)
                ToolbarItem(placement: .topBarLeading) {
                    Button("Settings", systemImage: "gearshape") {
                        
                    }
                }
                
                ToolbarItemGroup(placement: .topBarTrailing) {
                    Button("Edit", systemImage: "pencil") {
                        
                    }
                    .tint(.blue)
                    Button("Edit", systemImage: "eraser") {
                        
                    }
                    
                }
                ToolbarSpacer(.fixed, placement: .topBarTrailing)
                ToolbarItem(placement: .topBarTrailing) {
                    Button("info", systemImage: "info") {
                        
                    }
                }
                
                ToolbarItemGroup(placement: .bottomBar) {
                    Button("New", systemImage: "plus") {
                        
                    }
                    Button("Save", systemImage: "square.and.arrow.down") {
                        
                    }
                }
                ToolbarSpacer(placement: .bottomBar)
                ToolbarItem(placement: .bottomBar) {
                    Button("Delete", systemImage: "trash") {
                        
                    }

                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
