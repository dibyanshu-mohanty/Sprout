//
//  StarRating.swift
//  Sprout
//
//  Created by Dibyanshu Mohanty on 15/01/24.
//

import SwiftUI

struct StarRating: View {
    var starRating: Int;
    var body: some View {
        RoundedRectangle(cornerRadius: 4)
            .stroke(Color(hex: "#F3C116"),lineWidth: 0.5)
            .background(Color(hex: "#EBC346").opacity(0.12).cornerRadius(4))
            .overlay(content: {
                HStack(spacing:0){
                    ForEach(0..<starRating,id: \.self) {
                        index in
                        Image(systemName: "star.fill")
                            .resizable()
                            .foregroundStyle(Color(hex: "#EBC346"))
                    }
                    ForEach(0..<(5-starRating), id: \.self) {
                        index in
                        Image(systemName: "star")
                            .resizable()
                            .foregroundStyle(Color(hex: "#F3C116"))
                    }

                 
                    
                }
                .padding(.all,4)
                
            })
            .frame(width: 66,height: 18)
    }
}


#Preview {
    StarRating(starRating: 5)
}
