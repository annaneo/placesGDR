//
//  ContentView.swift
//  PlacesGDR
//
//  Created by Anna Neovesky on 18.01.22.
//

import SwiftUI

struct PlacesListView: View {
    
    let places: [Place] = Bundle.main.decode("places-develop.json")
    
    @State private var searchText = ""
    @StateObject var favorites = FavoritePlaces()
    
    var body: some View {
        NavigationView {
            List(filteredPlaces) { place in
                NavigationLink {
                    PlaceView(place: place)
                } label: {
                    HStack {
                        Image(place.type)
                        VStack(alignment: .leading) {
                            Text(place.name)
                                .font(.headline)
                            Text("\(place.city)")
                                .foregroundColor(.secondary)
                        }
                        
                        if favorites.contains(place) {
                            Spacer()
                            Image(systemName: "heart.fill")
                                .accessibilityLabel("Dieser Ort ist ein Favorit")
                                .foregroundColor(.red)
                        }
                    }
                    
                }
            }
            .navigationTitle("Orte")
            .searchable(text: $searchText, prompt: "Suche")
        }
        .environmentObject(favorites)
    }
    
    var filteredPlaces: [Place] {
        if searchText.isEmpty {
            return places
        } else {
            return places.filter { $0.name.localizedCaseInsensitiveContains(searchText) }        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PlacesListView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
