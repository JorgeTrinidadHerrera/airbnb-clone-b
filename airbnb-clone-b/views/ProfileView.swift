//
//  ProfileView.swift
//  airbnb-clone-b
//
//  Created by MAC37 on 10/11/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView(.vertical){
            VStack(alignment: .leading, spacing: 10){
                Image("jorge")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                Text("Hi  I'm Jorge")
                    .font(.title2)
                Text("Joined in 2021")
                    .foregroundStyle(.gray)
                Divider()
                    .padding(.vertical)
                VStack(alignment: .leading, spacing: 20) {
                    Text("Identify verification")
                        .font(.title3)
                    Text("Show others you're really you with the identity verification badge")
                    Button{
                        
                    } label: {
                        Text("get the badge")
                            .padding()
                            .foregroundStyle(.blue)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6).stroke(Color.black)
                            )
                    }
                }
                Divider()
                    .padding(.vertical)
                HStack{
                    Image(systemName: "pencil.circle")
                    Text("Some info is shown in its original lenguage.")
                }
                Text("Matt confirmed")
                    .font(.title2)
                    .padding(.top)
                    .fontWeight(.semibold)
                HStack{
                    Image(systemName: "pencil.circle")
                    Text("Phone number")
                }.padding(.top)
                Divider()
                    .padding(.vertical)
            }.padding()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
