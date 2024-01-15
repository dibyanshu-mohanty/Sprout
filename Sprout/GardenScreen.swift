//
//  GardenScreen.swift
//  Sprout
//
//  Created by Dibyanshu Mohanty on 14/01/24.
//

import SwiftUI

struct GardenScreen: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    HStack{
                        Image(systemName: "mappin")
                        VStack(alignment: .leading){
                            Text("Dibyanshu")
                                .font(Font.custom("Onest-Medium", size: 12))
                                .foregroundStyle(Color("primaryBlack"))
                            
                            Text("124, Killinger Road, Siemens Avenue")
                                .font(Font.custom("Onest-Medium", size: 12))
                                .foregroundStyle(Color(hex: "#828282"))
                        }
                        Spacer()
                        Circle()
                            .fill(Color(hex: "#E6EAF7"))
                            .frame(width: 32,height: 32)
                            .overlay {
                                Image(systemName: "person.fill")
                                    .foregroundStyle(Color(hex: "#B6B9D7"))
                            }
                    }
                    .padding(.horizontal,12)
                    .padding(.vertical,20)
                    HStack{
                        Text("Garden Tips")
                            .font(Font.custom("Onest-SemiBold", size: 18))
                            .foregroundStyle(.primaryBlack)
                        .padding(.bottom,8)
                        Spacer()
                    }.padding(.horizontal,12)
                    Text("Easily manage your plants and know about what they need when they need it.")
                        .font(Font.custom("Onest-Medium", size: 14))
                        .foregroundStyle(Color(hex: "828282"))
                        .padding(.horizontal,12)
                        .padding(.bottom,24)
                    ForEach(0..<3,id: \.self) { index in
                        GardenPlantCard(imageText: GlobalConstants().images[index],isOutdoor: index % 2 == 0)
                    }
                }
            }
        }
    }
}

#Preview {
    GardenScreen()
}


