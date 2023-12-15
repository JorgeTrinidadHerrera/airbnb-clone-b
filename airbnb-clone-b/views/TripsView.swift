//
//  TripsView.swift
//  airbnb-clone-b
//
//  Created by MAC37 on 10/11/23.
//

import SwiftUI
import MapKit

struct TripsView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -12.0450947, longitude: -76.9545933), span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))

    var body: some View {
        ZStack {
            Map(coordinateRegion: $region)
                .ignoresSafeArea()
            VStack{
                Spacer()
                HStack {
                    Image("item1")
                        .resizable()
                        .frame(width: 120)
                    VStack(alignment: .leading, spacing: 10) {
                        HStack{
                            Text("La Calera, Colombia")
                                .font(.caption)
                                .fontWeight(.semibold)
                            Spacer()
                            Image(systemName: "heart")
                        }
                        Spacer()
                        Text("Nov 19 - 24")
                            .font(.caption)
                            .fontWeight(.light)
                        HStack{
                            Text("S/ 268 night")
                                .font(.caption)
                            Spacer()
                            Image(systemName: "star.fill")
                            Text("4.91")
                                .font(.caption)
                        }
                    }
                    .padding(.vertical)
                    Spacer()
                }
                .frame(height: 120)
                .background(.white)
                .cornerRadius(10)
            }
            .padding()
        }
        .shadow(radius: 10)
    }
}

struct TripsView_Previews: PreviewProvider {
    static var previews: some View {
        TripsView()
    }
}
