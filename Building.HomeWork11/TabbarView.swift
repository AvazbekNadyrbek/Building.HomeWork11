//
//  TabbarView.swift
//  Building.HomeWork11
//
//  Created by Авазбек Надырбек уулу on 19.09.25.
//

import SwiftUI

struct TabbarView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<100) { i in
                   Text("View \(i)")
                        .padding(.vertical)
                        .onAppear {
                            print("Víew \(i) appeared")
                        }
                }
            }
            Image(systemName: "xmark")
        }
        .background(.blue)
    }
}

#Preview {
    TabbarView()
}
