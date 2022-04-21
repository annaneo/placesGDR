//
//  OrteDDRGeschichteApp.swift
//  PlacesGDR
//
//  Created by Anna Neovesky on 18.01.22.
//

import SwiftUI

@main
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
