//
//  BannerView.swift
//  Building.HomeWork11
//
//  Created by Авазбек Надырбек уулу on 16.09.25.
//

import SwiftUI

struct BannerView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                HStack {
                    Image(systemName: "circle.dotted.circle.fill")
                        .foregroundColor(.white)
                        .font(.caption)
                    Text("Update")
                        .font(.callout)
                        .foregroundStyle(.white)
                }
                Spacer()
                Image(systemName: "ellipsis")
                    .foregroundStyle(.white)
            }
            VStack(alignment: .leading, spacing: 30) {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Feb 24th 2026")
                        .font(.caption)
                        .fontWeight(.medium)
                        .foregroundStyle(.secondary)
                    VStack(alignment: .leading) {
                        Text("Sales revenue increased ")
                        +
                        Text("25%")
                            .foregroundStyle(.green)
                        Text("in 1 week")
                            .foregroundStyle(.white)
                    }
    
                }
                .font(.title3)
                .fontWeight(.medium)
                .foregroundStyle(.white)
                Button {
                    
                } label: {
                    HStack {
                        Text("See stats")
                        Image(systemName: "chevron.right")
                    }
                    .foregroundStyle(.white)
                }
            }
            
        }
        .padding(18)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(.bannerImg)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        
    }
}

#Preview {
    BannerView()
}
