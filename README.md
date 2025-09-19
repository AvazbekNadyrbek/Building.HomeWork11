# Financial Dashboard App 💰

A modern, elegant financial dashboard built with SwiftUI that provides users with comprehensive money management capabilities and transaction tracking.

![SwiftUI](https://img.shields.io/badge/SwiftUI-5.0-blue.svg)
![iOS](https://img.shields.io/badge/iOS-17.0+-green.svg)
![Xcode](https://img.shields.io/badge/Xcode-15.0+-orange.svg)

## 📱 Features

### Core Functionality
- **Dashboard Overview**: Clean, intuitive home screen with financial metrics
- **Transaction Management**: Track and monitor financial transactions
- **Search Functionality**: Quick search across financial data
- **Multi-Tab Navigation**: Easy navigation between different app sections

### UI Components
- **Custom Glass Effect**: Custom-built glassmorphism design using SwiftUI materials
- **Interactive Widgets**: Financial data visualization with trend indicators
- **Dynamic Banner**: Real-time updates and notifications
- **Professional Header**: User profile and navigation controls

### Data Management
- **Mock Data Integration**: Structured data models for financial information
- **Type-Safe Enums**: Robust data handling with Swift enums
- **State Management**: Reactive UI updates using SwiftUI state

## 🏗️ Architecture

### Project Structure
Building.HomeWork11/
├── Extensions/
│   └── View+GlassEffect.swift      # Custom glass effect modifier
├── Model/
│   └── WidgetItemData.swift        # Data models and mock data
├── Views/
│   ├── ContentView.swift           # Main dashboard view
│   ├── PageHeader.swift            # Header component with user info
│   ├── SearchView.swift            # Search functionality
│   ├── BannerView.swift            # Promotional banner
│   ├── WidgetView.swift            # Financial widget cards
│   ├── TransaktionView.swift       # Transaction history
│   └── TabView.swift               # Tab navigation
└── App/
    └── Building_HomeWork11App.swift # App entry point

### Design Patterns
- **MVVM Architecture**: Clean separation of concerns
- **Compositional UI**: Modular, reusable SwiftUI components
- **Custom Extensions**: Reusable UI modifiers and styling
- **Data-Driven Design**: Dynamic content based on model data
- **Responsive Layout**: Adaptive UI across different screen sizes

## 🎨 UI/UX Highlights

### Visual Design
- **GlassEffect**: Hand-crafted glass effect using SwiftUI materials
- **Consistent Color Scheme**: Brand colors throughout the application
- **Smooth Animations**: Fluid transitions and interactions
- **Typography Hierarchy**: Clear, readable text styling

### User Experience
- **Intuitive Navigation**: Tab-based navigation for easy access
- **Search Integration**: Quick data discovery
- **Interactive Elements**: Responsive buttons and controls
- **Financial Indicators**: Clear positive/negative trend visualization

### Screenshot UI


<img width="245" height="496" alt="Screenshot 2025-09-19 at 16 48 06" src="https://github.com/user-attachments/assets/414ec9c2-73bd-4425-95f0-618d21f39380" />


### SwiftUI Features Used
- `NavigationStack` for modern navigation
- `@State` and `@Environment` for state management
- Custom view modifiers for consistent styling
- `ForEach` for dynamic list rendering
- `ZStack` and `HStack`/`VStack` for complex layouts
- `.ultraThinMaterial` for glassmorphism effects
