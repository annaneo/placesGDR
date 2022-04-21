import Foundation


extension Bundle {
    
    /// Fetch data from remote JSON file
    func decode<T: Decodable>(_ file: String) -> T {
        
        // locate JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file).")
        }

        // load content of JSON
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file).")
        }

        let decoder = JSONDecoder()

        // decode JSON
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file).")
        }

        return loaded
    }
}
