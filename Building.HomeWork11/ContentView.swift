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
                            TransaktionView()
                        }
                        
                    }
                }
                .padding(.horizontal, 15)
            }
            .navigationBarTitleDisplayMode(.inline)
            
            
            
        }
    }
}

#Preview {
    ContentView()
}
