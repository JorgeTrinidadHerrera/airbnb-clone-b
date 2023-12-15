//
//  LoginViewModel.swift
//  airbnb-clone-b
//
//  Created by MAC37 on 1/12/23.
//

import Foundation

class AirbnbViewModel: ObservableObject {
    @Published var airbnbData: [Place] = []
    
    func loadAirbnbData() async {
        guard let url = URL(string: "https://airbnb-api-b-omega.vercel.app/airbnb") else{
            print("Invalid URL")
            return
        }
        
        do{
            let (data, _) = try await URLSession.shared.data(from: url)
            let decoder = JSONDecoder()
            let result = try decoder.decode(AirbnbData.self, from: data)
            
            DispatchQueue.main.async {
                self.airbnbData = result.places
            }
        }catch let error{
            print(error.localizedDescription)
        }
    }
}
