//
//  WidgetView.swift
//  Building.HomeWork11
//
//  Created by Авазбек Надырбек уулу on 19.09.25.
//

import SwiftUI

struct WidgetView: View {
    
    var item: WidgetItemData
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Text(item.title)
                    .font(.subheadline)
                    .bold()
                
                Spacer()
                Button {
                    print(item.price)
                } label: {
                    Image(systemName: "ellipsis")
                        .foregroundStyle(.black)
                }
            }
            
            HStack(alignment: .top, spacing: 5) {
                Text("$")
                Text(item.price)
                    .font(.title)
            }
            .fontWeight(.bold)
            
            HStack {
                Image(item.type == .possitive ? .uppArrow : .downArrow)
                    .resizable()
                    .frame(width: 12, height: 12)
                Text(item.percent).foregroundStyle(.bannerImg) + Text(item.description)
            }
            .font(.caption)
        }
        .padding()
        .glassEffect(in: .rect(cornerRadius: 16.0))
    }
}

