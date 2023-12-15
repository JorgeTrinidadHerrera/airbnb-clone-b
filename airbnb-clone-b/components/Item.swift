//
//  Item.swift
//  airbnb-clone-b
//
//  Created by MAC40 on 3/11/23.
//

import SwiftUI

struct Item: View {
    var place: Place
        
        var body: some View {
            VStack(alignment: .leading, spacing: 10) {
                AsyncImage(url: URL(string: place.image_url)) { image in image .resizable()
                    .frame(width: 342, height: 323)
                    .cornerRadius(16)
                    
                }placeholder: {
                    ProgressView()
                    
                }
                HStack {
                    Text("\(place.location.city), \(place.location.country)")
                        .fontWeight(.bold)
                    Spacer()
                    HStack {
                        Image(systemName: "star.fill")
                            .font(.system(size: 11))
                        Text(String(format: "%.1f", place.rating))
                    }
                    
                }
                Text("Professional Host")
                    .fontWeight(.light)
                    .foregroundStyle(.gray)
                Text(place.date)
                    .fontWeight(.light)
                    .foregroundStyle(.gray)
                Text("$\(String(format: "%.2f", place.price)) total")
            }
            .padding()
        }
}

struct Item_Previews: PreviewProvider {
    static var previews: some View {
            let place = Place(
                name: "Sample Place",
                rating: 4.5,
                location: Location(country: "Sample Country", city: "Sample City"),
                image_url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.worldpackers.com%2Fes%2Farticles%2Ftipos-de-alojamiento-turistico&psig=AOvVaw0bLvuX5O2U88-WALzitPTB&ust=1701547239552000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCKCnociD74IDFQAAAAAdAAAAABAE",
                date: "2023-01-01",
                price: 100
            )
            Item(place: place)
        }
}
