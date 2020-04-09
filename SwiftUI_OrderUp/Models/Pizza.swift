import Foundation

struct Pizza : Identifiable {
    
    let id: UUID = UUID()
    let name: String
    let image: String
    let price: Double
}

extension Pizza {
    static func all() -> [Pizza] {
        return [
            Pizza(name: "California", image: "Pizza_California", price: 10.12),
            Pizza(name: "Chicago", image: "Pizza_Chicago", price: 11.22),
            Pizza(name: "Greek", image: "Pizza_Greek", price: 12.34),
            Pizza(name: "Neopolitan", image: "Pizza_Neopolitan", price: 13.45),
            Pizza(name: "New York Style", image: "Pizza_New_York_Style", price: 14.67),
            Pizza(name: "Sicilian", image: "Pizza_Sicilian", price: 15.78)
        ]
    }
}
