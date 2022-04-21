//
//  PlaceView.swift
//  PlacesGDR
//
//  Created by Anna Neovesky on 18.02.22.
//

import SwiftUI

struct PlaceView: View {
    let place: Place
    
    @EnvironmentObject var favorites: FavoritePlaces
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Group {
                    Text("Hier steht eine Kurzbeschreibung")
                    HStack(alignment: .top) {
                        Text("Website")
                        Link("\(place.url)",
                             destination: URL(string: "\(place.url)")!)
                    }
                    Text("Öffnungszeiten")
                        .font(.headline)
                    Text("Mo-Fr 10-18")
                }
                
                Image(decorative: place.id)
                    .resizable()
                    .clipShape(Capsule())
                    .scaledToFit()
                Text("© \(place.imageCredit)")
                    .font(.footnote)
                
                // TODO: make heart (filled and empty instead text)
                Button(favorites.contains(place) ? "Favorit entfernen" : "Als Favorit markieren") {
                    if favorites.contains(place) {
                        favorites.remove(place)
                    } else {
                        favorites.add(place)
                    }
                }
                .buttonStyle(.bordered)
                .padding()
                
                Group {
                    Text("Beschreibung")
                        .font(.headline)
                    
                    Text(place.description)
                        .padding(.vertical)
                    
                    Text("Kategorien")
                        .font(.headline)
                }
            }
        }
        .padding(20)
        .navigationTitle("\(place.name), \(place.city)")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct PlaceView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PlaceView(place: Place.example)
        }
        .environmentObject(FavoritePlaces())
    }
}
