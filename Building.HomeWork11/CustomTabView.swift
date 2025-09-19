import SwiftUI

struct CustomTabView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        VStack(spacing: 0) {
            // Content area
            Group {
                switch selectedTab {
                case 0:
                    ContentView()
                case 1:
                    WalletView()
                case 2:
                    StatsView()
                case 3:
                    ProfileView()
                default:
                    ContentView()
                }
            }
            
            // Custom Tab Bar
            HStack {
                TabBarButton(
                    icon: "house.fill",
                    title: "Home",
                    isSelected: selectedTab == 0
                ) {
                    selectedTab = 0
                }
                
                TabBarButton(
                    icon: "creditcard.fill",
                    title: "Wallet",
                    isSelected: selectedTab == 1
                ) {
                    selectedTab = 1
                }
                
                TabBarButton(
                    icon: "chart.bar.fill",
                    title: "Stats",
                    isSelected: selectedTab == 2
                ) {
                    selectedTab = 2
                }
                
                TabBarButton(
                    icon: "person.fill",
                    title: "Profile",
                    isSelected: selectedTab == 3
                ) {
                    selectedTab = 3
                }
            }
            .padding(.horizontal)
            .padding(.top, 10)
            .padding(.bottom, 30)
            .background(Color.white)
            .shadow(color: .gray.opacity(0.2), radius: 10, x: 0, y: -5)
        }
        .ignoresSafeArea(.keyboard, edges: .bottom)
    }
}

struct TabBarButton: View {
    let icon: String
    let title: String
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            VStack(spacing: 4) {
                Image(systemName: icon)
                    .font(.system(size: 20))
                    .foregroundColor(isSelected ? .blue : .gray)
                
                Text(title)
                    .font(.caption)
                    .foregroundColor(isSelected ? .blue : .gray)
            }
            .frame(maxWidth: .infinity)
        }
    }
}

// Placeholder views for other tabs
struct WalletView: View {
    var body: some View {
        VStack {
            Text("Wallet View")
                .font(.title)
            Text("Your wallet content here")
                .foregroundColor(.gray)
        }
    }
}

struct StatsView: View {
    var body: some View {
        VStack {
            Text("Statistics View")
                .font(.title)
            Text("Your stats content here")
                .foregroundColor(.gray)
        }
    }
}

struct ProfileView: View {
    var body: some View {
        VStack {
            Text("Profile View")
                .font(.title)
            Text("Your profile content here")
                .foregroundColor(.gray)
        }
    }
}

#Preview {
    CustomTabView()
}