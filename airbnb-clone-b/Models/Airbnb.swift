//
//  Airbnb.swift
//  airbnb-clone-b
//
//  Created by MAC37 on 1/12/23.
//

import Foundation

struct AirbnbData: Codable{
    let places: [Place]
}

struct Place: Codable{
    let name: String
    let rating: Double
    let location: Location
    let image_url: String
    let date: String
    let price: Double
}

struct Location: Codable{
    let country: String
    let city: String
}
