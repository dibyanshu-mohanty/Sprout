//
//  PrimaryButton.swift
//  Sprout
//
//  Created by Dibyanshu Mohanty on 09/10/23.
//

import SwiftUI

struct PrimaryButton: View {
    var title: String;
    var body: some View {
            Text(title)
                .font(Font.custom("Onest-SemiBold", size: 16))
                .shadow(color:.black.opacity(0.15),radius: 1,x:1,y:1)
                .foregroundStyle(.white)
                .padding()
                .frame(maxWidth: .infinity,maxHeight: 56)
                .background(
                    Color("primaryColor").cornerRadius(12)
                )
                .shadow(color: .black.opacity(0.12), radius: 4, x: 1, y: 1)
                .shadow(color: .black.opacity(0.12), radius: 4, x: -1, y: -1)
    }
}

#Preview {
    PrimaryButton(title: "")
}
