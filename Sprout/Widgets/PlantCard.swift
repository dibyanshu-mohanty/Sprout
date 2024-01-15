//
//  PlantCard.swift
//  Sprout
//
//  Created by Dibyanshu Mohanty on 15/01/24.
//

import SwiftUI

struct PlantCard: View {
    var imageText:String;
    var body: some View {
        
            NavigationLink{
                DetailsScreen(imageText: imageText,redirectedFromGarden: false)
            } label:{
                VStack {
                    HStack{
                        VStack(alignment: .leading){
                            RoundedRectangle(cornerRadius: 4)
                                .stroke(.gray,lineWidth: 0.5)
                                .background(Color(hex: "#46A972").cornerRadius(4))
                                .overlay(content: {
                                    Text("Indoor")
                                        .font(Font.custom("Onest-Medium", size: 12))
                                        .foregroundStyle(.white)
                                        .padding(.all,4)
                                })
                                .frame(width: 52,height: 16)
                            
                            Text("Montsera Deliciosa Plant")
                                .font(Font.custom("Onest-SemiBold", size: 16))
                                .foregroundStyle(.black)
                            
                                .padding(.top,2)
                                .padding(.bottom,12)
                            
                            HStack (spacing: 4){
                                StarRating(starRating: 4)
                                Text("260 Ratings")
                                    .font(Font.custom("Onest-Medium", size: 11))
                                    .foregroundStyle(Color(hex: "#4F4F4F"))
                                
                            }
                            .padding(.bottom,8)
                            
                            HStack(spacing: 4){
                                Text("\u{20B9}340")
                                    .font(Font.custom("Onest-SemiBold", size: 12))
                                    .foregroundStyle(.black)
                                
                                Text("\u{20B9}420")
                                    .font(Font.custom("Onest-Medium", size: 12))
                                    .foregroundStyle(Color(hex: "#828282"))
                                    .strikethrough()
                                
                            }
                            .padding(.bottom,4)
                            
                            Text("22% OFF")
                                .font(Font.custom("Onest-SemiBold", size: 12))
                                .foregroundStyle(Color(hex: "#538BEE"))
                            
                            
                        }
                        Spacer()
                        ImageView(urlString: imageText)
                            .frame(width: 150,height: 150)
                            .scaledToFit()
                            .cornerRadius(12)
                    }
                    .padding(.horizontal,12)
                }
            }
            .isDetailLink(false)
            Line()
                .stroke(style: StrokeStyle(lineWidth: 0.4, dash: [5]))
                .foregroundStyle(Color(hex: "#D6D6D6"))
                .frame(height: 1)
                .padding(.vertical,24)
            
        }
}

#Preview {
    PlantCard(imageText: "")
}


struct Line: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        return path
    }
}


struct GardenPlantCard: View {
    var imageText:String;
    var isOutdoor:Bool;
    @State var isReadMore : Bool = false;
    var body: some View {
            NavigationLink{
                DetailsScreen(imageText: imageText,redirectedFromGarden: true,isIndoor: !isOutdoor)
            } label:{
                VStack {
                    HStack{
                        VStack(alignment: .leading){
                            PlantLocationTag(isIndoorPlant: !isOutdoor)
                            
                            Text("Montsera Deliciosa Plant")
                                .font(Font.custom("Onest-SemiBold", size: 16))
                                .foregroundStyle(.black)
                            
                                .padding(.top,2)
                                .padding(.bottom,12)
                            HStack {
                                ZStack(alignment:.leading){
                                    Circle()
                                        .overlay(content: {
                                            ImageView(urlString: GlobalConstants().peopleImages[0])
                                 
                                                .scaledToFill()
                                                .frame(width: 20,height: 20)
                                                .cornerRadius(120)
                                        })
                                        .frame(width: 20,height: 20)
                                        .padding(.leading,0)
                                    Circle()
                                        .overlay(content: {
                                            ImageView(urlString: GlobalConstants().peopleImages[1])
                                     
                                                .scaledToFill()
                                                .frame(width: 20,height: 20)
                                                .cornerRadius(120)
                                                
                                        })
                                        .frame(width: 20,height: 20)
                                        .padding(.leading,15)
                                    Circle()
                                        .overlay(content: {
                                            ImageView(urlString: GlobalConstants().peopleImages[2])
                                           
                                                .scaledToFill()
                                                .frame(width: 20,height: 20)
                                                .cornerRadius(120)
                                                
                                        })
                                        .frame(width: 20,height: 20)
                                        .padding(.leading,30)
                                    Circle()
                                        .overlay(content: {
                                            ImageView(urlString: GlobalConstants().peopleImages[3])
                                      
                                                .scaledToFill()
                                                .frame(width: 20,height: 20)
                                                .cornerRadius(120)
                                                
                                        })
                                        .frame(width: 20,height: 20)
                                        .padding(.leading,45)
                                }
                                Text("340+ people own this")
                                    .font(Font.custom("Onest-medium", size: 11))
                                    .foregroundStyle(Color(hex: "4F4F4F"))
                            }
                            .padding(.bottom,16)
                            
                            VStack (alignment:.leading,spacing:0){
                                Text("You might have seen it in a million home décor posts on social media, and it makes a great piece of beauty that adds a sense of serendipity to your garden.")
                                    .font(Font.custom("Onest-medium", size: 11))
                                    .lineLimit(isReadMore ? 10 : 2)
                                    .multilineTextAlignment(.leading)
                                .foregroundStyle(Color(hex: "4F4F4F"))
                                Button {
                                    isReadMore.toggle();
                                } label: {
                                    Text(isReadMore ? "Read Less" : "Read More")
                                        .font(Font.custom("Onest-SemiBold", size: 12))
                                        .foregroundStyle(.black)
                                        
                                }
                            }
                        
                        }
                        Spacer()
                        ImageView(urlString: imageText)
                            .frame(width: 150,height: 175)
                            .scaledToFit()
                            .cornerRadius(12)
                    }
                    .padding(.horizontal,12)
                  
                }
            }
            .isDetailLink(false)
            Line()
                .stroke(style: StrokeStyle(lineWidth: 0.4, dash: [5]))
                .foregroundStyle(Color(hex: "#D6D6D6"))
                .frame(height: 1)
                .padding(.vertical,16)
            
        }
        
    }

