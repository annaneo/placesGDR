import Foundation

/// Place (museum, monument)
struct Place: Codable, Identifiable {
    let id: String
    let name: String
    let city: String
    let address: String
    let type: String
    let shortDesc: String
    let description: String
    let descURL: String
    let url: String
    let imageCredit: String
    let lat: Double
    let long: Double
    let openDay: [String]
    let openTime: [String]
    let price: String
    
    static let allPlaces: [Place] = Bundle.main.decode("places-develop.json")
    static let example = allPlaces[0]
}
