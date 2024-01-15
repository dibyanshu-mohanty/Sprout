//
//  PlantLocationTag.swift
//  Sprout
//
//  Created by Dibyanshu Mohanty on 14/01/24.
//

import SwiftUI

struct PlantLocationTag: View {
    var isIndoorPlant: Bool;
    var body: some View {
        RoundedRectangle(cornerRadius: 4)
            .stroke(.gray,lineWidth: 0.5)
            .background(Color(hex: isIndoorPlant ? "#46A972" : "00689B").cornerRadius(4))
            .overlay(content: {
                Text(isIndoorPlant ? "Indoor" : "Outdoor")
                    .font(Font.custom("Onest-Medium", size: 12))
                    .foregroundStyle(.white)
                    .padding(.all,4)
            })
            .frame(width: 65,height: 16)
    }
}


#Preview {
    PlantLocationTag(isIndoorPlant: true)
}
