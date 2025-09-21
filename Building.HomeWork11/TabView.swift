//
//  TabView.swift
//  Building.HomeWork11
//
//  Created by Авазбек Надырбек уулу on 19.09.25.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            WalletView()
                .tabItem {
                    Image(systemName: "creditcard")
                    Text("Wallet")
                }
            
            StatsView()
                .tabItem {
                    Image(systemName: "chart.bar")
                    Text("Stats")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
        .tint(.bannerImg)
    }
}


struct StatsView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Statistics View")
                    .font(.title)
                Text("Your stats content here")
                    .foregroundColor(.gray)
            }
            .navigationTitle("Statistics")
        }
    }
}

struct ProfileView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Profile View")
                    .font(.title)
                Text("Your profile content here")
                    .foregroundColor(.gray)
            }
            .navigationTitle("Profile")
        }
    }
}

#Preview {
    MainTabView()
}
