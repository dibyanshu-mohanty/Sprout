//
//  BlogsScreen.swift
//  Sprout
//
//  Created by Dibyanshu Mohanty on 14/12/23.
//

import SwiftUI

struct BlogsScreen: View {
    var body: some View {
        ScrollView {
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
                    Text("Blogs and Tips")
                        .font(Font.custom("Onest-SemiBold", size: 18))
                        .foregroundStyle(.primaryBlack)
                    .padding(.bottom,28)
                    Spacer()
                }.padding(.horizontal,12)
                
                HStack{
                    VStack {
                        Divider()
                            .frame(width: 64)
                    }
               
                        Text("LEARN TO BETTER YOUR GARDEN")
                            .font(Font.custom("Onest-Medium", size: 12))
                            .foregroundStyle(Color(hex: "#2D2D2D"))
                            .fontDesign(.rounded)
                          
                        .padding(.horizontal,8)
                        
                        
                    
                    VStack {
                        Divider()
                            .frame(width: 64)
                    }
                }
                VStack(alignment:.center,spacing:4){
                    Text("Grow your own vegetables and herbs at home")
                        .font(Font.custom("Onest-Regular", size: 11))
                        .foregroundStyle(Color(hex: "#828282"))
                        .padding(.bottom,16)
                }
                
                BlogPost1()
                Line()
                    .stroke(style: StrokeStyle(lineWidth: 0.4, dash: [5]))
                    .foregroundStyle(Color(hex: "#D6D6D6"))
                  .frame(height: 1)
                  .padding(.vertical,16)
                  
                
                BlogPost2()
                Line()
                    .stroke(style: StrokeStyle(lineWidth: 0.4, dash: [5]))
                    .foregroundStyle(Color(hex: "#D6D6D6"))
                  .frame(height: 1)
                  .padding(.bottom
                           ,16)
                  .padding(.bottom,24)
                
                HStack{
                    VStack {
                        Divider()
                            .frame(width: nil)
                    }
               
                        Text("RECENT BLOGS")
                            .font(Font.custom("Onest-Medium", size: 12))
                            .foregroundStyle(Color(hex: "#2D2D2D"))
                            .fontDesign(.rounded)
                          
                        .padding(.horizontal,8)
                        
                        
                    
                    VStack {
                        Divider()
                            .frame(width: nil)
                    }
                }.padding(.horizontal,12)
                    .padding(.bottom,32)
                
                BlogPost3()
                
                Line()
                    .stroke(style: StrokeStyle(lineWidth: 0.4, dash: [5]))
                    .foregroundStyle(Color(hex: "#D6D6D6"))
                  .frame(height: 1)
                  .padding(.vertical,16)
                BlogPost2()
                
            }
        }
    }
}

#Preview {
    BlogsScreen()
}

struct BlogPost3: View {
    var body: some View {
        VStack(alignment:.leading,spacing:0){
            Image("blogBanner3")
                .resizable()
            
                .frame(width: nil)
                .scaledToFit()
            
            HStack(spacing:3){
                Text("Ajay Sharma")
                    .font(Font.custom("Onest-Medium", size: 11))
                    .foregroundStyle(Color(hex: "#B5B5B5"))
                Text("l")
                    .font(Font.custom("Onest-Medium", size: 11))
                    .foregroundStyle(Color(hex: "#B5B5B5"))
                Text("May 26, 2023")
                    .font(Font.custom("Onest-Medium", size: 11))
                    .foregroundStyle(Color(hex: "#B5B5B5"))
                Text("l")
                    .font(Font.custom("Onest-Medium", size: 11))
                    .foregroundStyle(Color(hex: "#B5B5B5"))
                Text("2 min read")
                    .font(Font.custom("Onest-Medium", size: 11))
                    .foregroundStyle(Color(hex: "#B5B5B5"))
            }
            .padding(.horizontal,16)
            .padding(.bottom,20)
            Text("Elevate your dining experience with greener restaurants")
                .font(Font.custom("Onest-Bold", size: 16))
                .foregroundStyle(.primaryBlack)
                .padding(.horizontal,16)
                .padding(.bottom,8)
            
            Text("To raise awareness about planting and growing your own produce in India.")
                .font(Font.custom("Onest-Medium", size: 14))
                .multilineTextAlignment(.leading)
                .foregroundStyle(Color(hex: "#828282"))
                .padding(.horizontal,16)
        }
        .padding(.bottom,16)
    }
}
