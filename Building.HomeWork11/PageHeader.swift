//
//  PageHeader.swift
//  Building.HomeWork11
//
//  Created by Авазбек Надырбек уулу on 14.09.25.
//

import SwiftUI

struct PageHeader: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Text("Hello \nKevin Merico!")
                    .font(.system(size: 24, weight: .semibold, design: .default))
                Spacer()
                HStack() {
                    Image(.avatar)
                        .resizable()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    
                    
                    Button {
                        
                    } label: {
                        HStack(spacing: 5) {
                            Image(.iconHeader)
                                .resizable()
                                .frame(width: 17, height: 17)
                            Image(systemName: "chevron.down")
                                .foregroundStyle(.black)
                        }
                        .padding(.horizontal,8)
                        .padding(.vertical,9)
                    }
                    .glassEffect()
                    

                }
            }
            Text("Keep manage your money with care")
                .font(.system(size: 14, weight: .regular, design: .default))
                .foregroundColor(.secondary)
        }
    }
}

#Preview {
    PageHeader()
}
