//
//  TransaktionView.swift
//  Building.HomeWork11
//
//  Created by Авазбек Надырбек уулу on 19.09.25.
//

import SwiftUI

struct TransaktionView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            HStack {
                Text("Transaction")
                    .font(.title2)
                    .fontWeight(.semibold)
                Spacer()
                Image(systemName: "ellipsis")
                    .foregroundStyle(.black)
            }
            TransaktionViewData()
            TransaktionViewData()
            TransaktionViewData()
        }
    }
}

struct TransaktionViewData: View {
    var body: some View {
        HStack(alignment: .center, spacing: 15) {
            ZStack {
                Circle()
                    .foregroundStyle(.gray.opacity(0.3))
                    .frame(width: 60, height: 60)
                
                Image(systemName: "tshirt.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundStyle(.bannerImg)
                    .frame(width: 30, height: 30)
            }
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Tinek Destar T-Shirt")
                    .font(.headline)
                    .fontWeight(.semibold)
                Text("Jul 12th 2025")
                    .font(.body)
                    .foregroundStyle(.gray.opacity(0.7))
            }
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 4) {
                Text("Completed")
                    .font(.body)
                    .foregroundStyle(.bannerImg)
                Text("0AQWEQWEC")
                    .font(.caption)
                    .foregroundStyle(.gray.opacity(0.7))
            }
        }
    }
}

#Preview {
    TransaktionView()
}