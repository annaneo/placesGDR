import SwiftUI

@main

/// Places GDR APP
struct OrteDDRGeschichteApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                PlacesListView()
                    .tabItem {
                        Label("Orte", systemImage: "building.columns.circle.fill")
                    }
                MapView()
                    .tabItem {
                        Label("Karte", systemImage: "mappin.circle.fill")
                    }
            }
        }
    }
}
