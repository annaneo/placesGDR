//
//  FavoritePlaces.swift
//  PlacesGDR
//
//  Created by Anna Neovesky on 16.03.22.
//

import Foundation

class FavoritePlaces: ObservableObject {
    private var places: Set<String>
    private let saveKey = "Favoriten"
    
    init() {
        // TODO: implement functionality
        places = []
    }
    
    func contains(_ place: Place) -> Bool {
        places.contains(place.id)
    }
    
    func add(_ place: Place) {
        objectWillChange.send()
        places.insert(place.id)
        save()
    }
    
    func remove(_ place: Place) {
        objectWillChange.send()
        places.remove(place.id)
        save()
    }
    
    func save() {
        // TODO: implement functionality and think about what to do with favorites
    }
}
