//
//  SearchView.swift
//  Building.HomeWork11
//
//  Created by Авазбек Надырбек уулу on 15.09.25.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText: String = ""
    var body: some View {
        VStack(alignment: .leading,spacing: 15) {
            HStack {
                TextField("Search for better experience", text: $searchText)
                Image(systemName: "magnifyingglass")
            }
            .padding()
            .background {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(.black.opacity(0.2), lineWidth: 1)
            }
        }
    }
}

#Preview {
    SearchView()
}
