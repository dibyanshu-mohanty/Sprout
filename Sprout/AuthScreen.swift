//
//  AuthScreen.swift
//  Sprout
//
//  Created by Dibyanshu Mohanty on 09/10/23.
//

import SwiftUI

struct AuthScreen: View {
    var body: some View {
        NavigationStack{
            
            ZStack(alignment: .bottom) {
                Color("primaryColor")
                    .ignoresSafeArea(.all)
                VStack {
                    
                    Image("logo")
                        .resizable()
                        .frame(width: 162,height: 63)
                        .padding(.top,45)
                    Spacer()
                    ZStack(alignment:.center) {
                        Image("clouds")
                            .resizable()
                            .frame(height: 350)
                        Image("cycleMan")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 115)
                            .padding(.top,105)
                    }
                    .frame(height: 200)
                    
                    Rectangle()
                        .fill(.white)
                        .ignoresSafeArea(.all)
                        .frame(height: 220)
                        .overlay(content: {
                            VStack{
                            
                                NavigationLink {
                                    PhoneNumberScreen()
                                } label: {
                                    Text("Sign Up")
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
                                .isDetailLink(true)
                                .padding(.bottom,16)
                                
                                
                                Button {
                                    
                                } label: {
                                    Text("Log In")
                                        .font(Font.custom("Onest-SemiBold", size: 16))
                                        .shadow(color:.black.opacity(0.15),radius: 1,x:1,y:1)
                                        .foregroundStyle(Color("secondaryGreenColor"))
                                        .padding()
                                        .frame(maxWidth: .infinity,maxHeight: 56)
                                        .background(
                                            Color.white.cornerRadius(12)
                                        )
                                        .shadow(color: .black.opacity(0.12), radius: 2, x: 1, y: 2)
                                        .shadow(color: .black.opacity(0.12), radius: 2, x: -1, y: -2)
                                    
                                }
                                
                            }.padding(.horizontal,16)
                                .padding(.vertical,48)
                        })
                }
            }
            .toolbar(.hidden)
        }
    }
}

#Preview {
    AuthScreen()
}

