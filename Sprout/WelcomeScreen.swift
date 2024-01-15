//
//  WelcomeScreen.swift
//  Sprout
//
//  Created by Dibyanshu Mohanty on 09/10/23.
//

import SwiftUI

struct WelcomeScreen: View {
    @Environment(\.dismiss) var dismiss;
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading){
                
                Text("Get notified about important stuff")
                    .font(Font.custom("Onest-SemiBold", size: 20))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom,24)
                    .padding(.top,60)
                    .frame(width: 210,alignment: .leading)
                
                Text("You can adjust these settings later.")
                    .font(Font.custom("Onest-Regular", size: 16))
                    .fontWeight(.regular)
                    .foregroundStyle(Color("greyColor"))
                    .padding(.bottom,48)
                
                Text("We’ll notify you when")
                    .font(Font.custom("Onest-SemiBold", size: 20))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom,32)
                
                VStack(alignment: .leading,spacing: 32) {
                    HStack(spacing:8) {
                        Image(systemName: "calendar")
                        Text("Your payment is due")
                        .font(Font.custom("Onest-Medium", size: 16))
                        .fontWeight(.medium)
                    }
                    HStack(spacing:8) {
                        Image(systemName: "cart")
                        Text("You make a new purchase")
                        .font(Font.custom("Onest-Medium", size: 16))
                        .fontWeight(.medium)
                    }
                    HStack(spacing:8) {
                        Image(systemName: "truck.box")
                        Text("Your order is on the way")
                        .font(Font.custom("Onest-Medium", size: 16))
                        .fontWeight(.medium)
                    }
                    HStack(spacing:8) {
                        Image(systemName: "party.popper")
                        Text("We’ve got deals and products we think you’ll like")
                        .font(Font.custom("Onest-Medium", size: 16))
                        .fontWeight(.medium)
                    }
                }
                
                
                Spacer()
                HStack{
                    NavigationLink {
                        Navbar()
                    } label: {
                        Text("Later")
                            .font(Font.custom("Onest-SemiBold", size: 16))
                            .foregroundStyle(Color(
                                "primaryColor"))
                            .padding()
                            .frame(maxWidth: .infinity,maxHeight: 56)
                    }
                    
                    NavigationLink {
                        Navbar()
                    } label: {
                        Text("Continue")
                            .font(Font.custom("Onest-SemiBold", size: 16))
                            .shadow(color:.black.opacity(0.15),radius: 1,x:1,y:1)
                            .foregroundStyle(.white)
                            .padding()
                            .frame(maxWidth: .infinity,maxHeight: 56)
                            .background(
                                Color(
                                    "primaryColor").cornerRadius(12)
                            )
                            .shadow(color: .black.opacity(0.12), radius: 4, x: 1, y: 1)
                            .shadow(color: .black.opacity(0.12), radius: 4, x: -1, y: -1)
                    }
                }

                
                
            }
            .padding(.horizontal,16)
            .toolbar(.hidden)
        }
    }
}

#Preview {
    WelcomeScreen()
}
