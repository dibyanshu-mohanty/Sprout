//
//  DetailsScreen.swift
//  Sprout
//
//  Created by Dibyanshu Mohanty on 14/12/23.
//

import SwiftUI


struct DetailsScreen: View {
    var imageText: String = "https://images.unsplash.com/photo-1583753075968-1236ccb83c66?q=80&w=3124&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";
    var redirectedFromGarden: Bool;
    var isIndoor: Bool = true;
    
    @Environment(\.dismiss) private var dismiss
    
    enum Constants {
        static let imageWidth = 200
        static let imageHeight = 250
    }
    
    @State var imageWidth: Int = Constants.imageWidth
    @State var imageHeight: Int = Constants.imageHeight

    var body: some View {
        NavigationStack {
            VStack{
                Rectangle()
                    .frame(height: 56)
                    .foregroundStyle(.white)
                
                    .shadow(color:.primaryBlack.opacity(0.12),radius: 14,x:0,y: 2)
                    .mask(Rectangle().padding(.bottom, -20))
                    .overlay {
                        HStack(spacing:12){
                            Button(action: {
                                dismiss();
                            }, label: {
                                Image(systemName: "arrow.backward")
                                    .foregroundStyle(.black)
                                    .frame(width: 24,height: 24)
                            })
                            
                            Spacer()
                            Image(systemName: "heart")
                                .foregroundStyle(.black)
                                .frame(width: 24,height: 24)
                            Image(systemName: "square.and.arrow.up")
                                .foregroundStyle(.black)
                                .frame(width: 24,height: 24)
                            Image(systemName: "magnifyingglass")
                                .foregroundStyle(.black)
                                .frame(width: 24,height: 24)
                            Image(systemName: "ellipsis")
                                .rotationEffect(.degrees(90))
                                .foregroundStyle(.black)
                                .frame(width: 24,height: 24)
                        }.padding(.horizontal,12)
                    }
                ScrollViewOffset {
                    VStack(alignment:.leading,spacing: 0){
                        PlantLocationTag(isIndoorPlant: isIndoor)
                            .padding(.horizontal,12)
                            .padding(.bottom,8)
                        HStack{
                            Text("Monstera Deliciosa Plant")
                                .font(Font.custom("Onest-SemiBold", size: 16))
                                .foregroundStyle(.primaryBlack)
                            Spacer()
                            if(!redirectedFromGarden){
                                HStack (spacing: 4){
                                    RoundedRectangle(cornerRadius: 4)
                                        .stroke(Color(hex: "#F3C116"),lineWidth: 0.5)
                                        .background(Color(hex: "#EBC346").opacity(0.12).cornerRadius(4))
                                        .overlay(content: {
                                            HStack(spacing:0){
                                                Image(systemName: "star.fill")
                                                    .resizable()
                                                    .foregroundStyle(Color(hex: "#EBC346"))
                                                
                                                Image(systemName: "star.fill")
                                                    .resizable()
                                                    .foregroundStyle(Color(hex: "#EBC346"))
                                                
                                                Image(systemName: "star.fill")
                                                    .resizable()
                                                    .foregroundStyle(Color(hex: "#EBC346"))
                                                
                                                Image(systemName: "star.fill")
                                                    .resizable()
                                                    .foregroundStyle(Color(hex: "#EBC346"))
                                                
                                                Image(systemName: "star")
                                                    .resizable()
                                                    .foregroundStyle(Color(hex: "#F3C116"))
                                                
                                            }
                                            .padding(.all,4)
                                            
                                        })
                                        .frame(width: 66,height: 18)
                                    Text("340 Ratings")
                                        .font(Font.custom("Onest-Medium", size: 11))
                                        .foregroundStyle(Color(hex: "#828282"))
                                    
                                    }
                                }
                            }
                                .padding(.horizontal,12)
                                .padding(.bottom,8)
                     
                        ImageView(urlString: imageText)
                            .scaledToFit()
                            .frame(width: nil)
                        
                        
                        if(!redirectedFromGarden) {
                            VStack(alignment: .leading,spacing: 0){
                                Text("22% OFF")
                                    .font(Font.custom("Onest-SemiBold", size: 12))
                                    .foregroundStyle(Color(hex: "538BEE"))
                                    .padding(.top,12)
                                    .padding(.bottom,4)
                                  
                                
                                HStack(spacing:5){
                                    Text("\u{20B9}340")
                                        .font(Font.custom("Onest-Medium", size: 24))
                                        .foregroundStyle(.black)
                                    
                                    HStack(spacing:2){
                                        Text("M.R.P:")
                                            .font(Font.custom("Onest-Regular", size: 11))
                                            .foregroundStyle(Color(hex: "828282"))
                                        
                                        Text("\u{20B9}420")
                                            .font(Font.custom("Onest-SemiBold", size: 11))
                                            .foregroundStyle(Color(hex: "828282"))
                                            .strikethrough()
                                    }
                                    
                                
                                    
                                }
                                
                            }  .padding(.horizontal,12)
                        }
                   
                        
                        
                        VStack(alignment: .leading){
                            Text("Plant care requirements")
                                .font(Font.custom("Onest-Medium", size: 12))
                                .foregroundStyle(.black)
                                
                                .padding(.bottom,8)
                                .padding(.horizontal,12)
                            
                            ZStack {
                                Rectangle()
                                    .foregroundColor(Color(hex: "F4F6FA"))
                                    
                      
                                VStack(spacing:12){
                                    HStack {
                                        
                                        RequirementTag(
                                        imageName: "sprinkler.and.droplets", tagTitle: "Water Once A Week")
                                        Spacer()
    //                                    Rectangle()
    //                                        .frame(width: 1,height: 28)
    //                                        .foregroundStyle(Color(hex: "E3E8F1")).padding(.trailing,20)
    //                                    Spacer()
                                        RequirementTag(imageName: "sun.max.fill", tagTitle:"Need Bright Indirect \nSunlight")
                                    }
                                    
                                    HStack {
                                        
                                        RequirementTag(
                                        imageName: "leaf.fill", tagTitle: "Beginner Friendly")
                                        Spacer()
    //                                    Rectangle()
    //                                        .frame(width: 1,height: 28)
    //                                        .foregroundStyle(Color(hex: "E3E8F1")).padding(.trailing,20)
    //                                    Spacer()
                                        RequirementTag(imageName: "dog.fill", tagTitle:"Toxic To Pets")
                                  
                                    }
                                    
                                }  .padding(.all,12)
                            }
                        }
                        .padding(.top,24)
                        .padding(.bottom,32)
                   
                        AboutTheProduct()
                            .padding(.bottom,24)
                        
                        if(!redirectedFromGarden) {
                            VStack(spacing:0){
                                Text("Add to Cart")
                                    .font(Font.custom("Onest-SemiBold", size: 16))
                                    .shadow(color:.black.opacity(0.15),radius: 1,x:1,y:1)
                                    .foregroundStyle(.primaryDarkGreen)
                                    .padding()
                                    .frame(maxWidth: .infinity,maxHeight: 56)
                                    .background(
                                        Color.white.cornerRadius(14)
                                    )
                                    .shadow(color: .black.opacity(0.12), radius: 4, x: 1, y: 1)
                                    .padding(.horizontal,12)
                                
                                PrimaryButton(title: "Buy Now")
                                    .padding(.horizontal,12)
                                    .padding(.top,12)
                                    .padding(.bottom,32)
                                
                                VStack(alignment:.leading,spacing:8){
                                    Text("What's in the box")
                                        .font(Font.custom("Onest-SemiBold", size: 12))
                                        .foregroundStyle(.black)
                                    Group{
                                        Text("1. Song of India (Dracaena reflexa) ")
                                            .font(Font.custom("Onest-Medium", size: 14))
                                            .foregroundStyle(Color(hex: "828282")) +
                                        Text("Plant Height")
                                            .font(Font.custom("Onest-Medium", size: 14))
                                            .foregroundStyle(.black) +
                                        Text(": 55-65 ")
                                            .font(Font.custom("Onest-Medium", size: 14))
                                            .foregroundStyle(Color(hex: "828282")) +
                                        
                                        Text("Plant Spread")
                                            .font(Font.custom("Onest-Medium", size: 14))
                                            .foregroundStyle(.black) +
                                        
                                        Text(": 30-40 cm")
                                            .font(Font.custom("Onest-Medium", size: 14))
                                            .foregroundStyle(Color(hex: "828282"))
                                    }.padding(.leading,4)
                                    Group{
                                        Text("2. ")
                                            .font(Font.custom("Onest-Medium", size: 14))
                                            .foregroundStyle(Color(hex: "828282")) +
                                        Text("Pot Size")
                                            .font(Font.custom("Onest-Medium", size: 14))
                                            .foregroundStyle(.black) +
                                        Text(": 7.5 inch Side")
                                            .font(Font.custom("Onest-Medium", size: 14))
                                            .foregroundStyle(Color(hex: "828282"))
                                    }.padding(.leading,4)
                                    Group{
                                        Text("3. ")
                                            .font(Font.custom("Onest-Medium", size: 14))
                                            .foregroundStyle(Color(hex: "828282")) +
                                        Text("Soil Media")
                                            .font(Font.custom("Onest-Medium", size: 14))
                                            .foregroundStyle(.black) +
                                        Text(": Soil + Coco Peat + Coco Chips")
                                            .font(Font.custom("Onest-Medium", size: 14))
                                            .foregroundStyle(Color(hex: "828282"))
                                    }.padding(.leading,4)
                                    Group{
                                        Text("4. ")
                                            .font(Font.custom("Onest-Medium", size: 14))
                                            .foregroundStyle(Color(hex: "828282")) +
                                        Text("Recyclable Box")
                                            .font(Font.custom("Onest-Medium", size: 14))
                                            .foregroundStyle(.black)
                                    }.padding(.leading,4)
                                }.padding(.horizontal,12)
                                    .padding(.bottom,24)
                                
                                ZStack{
                                    Rectangle()
                                        .foregroundColor(Color(hex: "F4F6FA"))
                                    
                                    HStack(){
                                        Spacer()
                                        VStack(spacing: 8){
                                            Image(systemName: "truck.box")
                                                .foregroundStyle(.black)
                                            Text("Free Shipping")
                                                .font(Font.custom("Onest-Medium", size: 11))
                                                .foregroundStyle(.black)
                                        }
                                        Spacer()
                                        VStack(spacing: 8){
                                            Image(systemName: "creditcard")
                                                .foregroundStyle(.black)
                                            Text("Pay on delivery")
                                                .font(Font.custom("Onest-Medium", size: 11))
                                                .foregroundStyle(.black)
                                        }
                                        Spacer()
                                        VStack(spacing: 8){
                                            Image(systemName: "headphones")
                                                .foregroundStyle(.black)
                                            Text("Expert advice")
                                                .font(Font.custom("Onest-Medium", size: 11))
                                                .foregroundStyle(.black)
                                        }
                                        Spacer()
                                    }.padding(.horizontal,12)
                                        .padding(.vertical,16)
                                }
                                HStack{
                                    VStack {
                                        Divider()
                                            .frame(width: nil)
                                    }
                                    Text("ALSO BOUGHT")
                                        .font(Font.custom("Onest-Medium", size: 12))
                                        .foregroundStyle(Color(hex: "#2D2D2D"))
                                        .fontDesign(.rounded)
                                        .padding(.horizontal,12)
                                    VStack {
                                        Divider()
                                            .frame(width: nil)
                                    }
                                }.padding(.bottom,16)
                                    .padding(.top,40)
                                    .padding(.horizontal,12)
                                
                                PlantCard(imageText: GlobalConstants().images[1])
                                PlantCard(imageText: GlobalConstants().images[2])
                                
                                VStack(alignment:.leading){
                                    HStack{
                                        Text("Customer Reviews")
                                            .font(Font.custom("Onest-SemiBold", size: 12))
                                            .foregroundStyle(.black)
                                        Spacer()
                                        StarRating(starRating: 5)
                                    }
                                    HStack{
                                        Spacer()
                                        Text("5/5 in 2 ratings")
                                            .font(Font.custom("Onest-Regular", size: 11))
                                            .foregroundStyle(Color(hex: "828282"))
                                    }
                                    .padding(.bottom,12)
                                    ReviewSlab(reviewerName: "Virat Kohli", reviewText: "Amazing Quality. Turned out to be my favourite!!",ratingStars: 5)
                                    ReviewSlab(reviewerName: "Thala", reviewText: "Its not only a 5 Star but a 7 Star rating, iykyk",ratingStars: 5)
                                }.padding(.horizontal,12)
                                
                                ZStack{
                                    Rectangle()
                                        .foregroundColor(Color(hex: "F4F6FA"))
                                    HStack{
                                        Text("Write a Review")
                                            .font(Font.custom("Onest-SemiBold", size: 12))
                                            .foregroundStyle(.black)
                                        Spacer()
                                        Image(systemName: "chevron.right")
                                            .resizable()
                                            .foregroundStyle(.black)
                                            .frame(width:8,height:12)
                                    }
                                    .padding(.horizontal,12)
                                    .padding(.vertical,16)
                                }
                            }
                        }
                    }
                    .padding(.top,24)
                
                    
                    
                    
                }  onOffsetChange: { offset in
                    resizeImage(offset: Int(offset))
                }
             
            }
        }   .toolbar(.hidden)
        
        
    }
    
    
}

extension DetailsScreen {
    private func resizeImage(offset: Int) {
        let scale = 1 - (min(Constants.imageHeight, -offset) / Constants.imageHeight)
        imageWidth = Constants.imageWidth * scale
        imageHeight = Constants.imageHeight * scale
    }
}

#Preview {
    DetailsScreen(redirectedFromGarden: true)
}




struct RequirementTag: View {
    var imageName : String;
    var  tagTitle : String;
    var body: some View {
        HStack{
            Image(systemName: imageName)
                .foregroundStyle(Color(hex: "#0E401D"))
            Text(tagTitle)
                .font(Font.custom("Onest-Medium", size: 11))
            
        }
        
        .frame(width: 172,alignment: .leading)
    }
}

struct AboutTheProduct: View {
    @State var isViewClose: Bool = true;
    var body: some View {
        VStack(alignment:.leading,spacing:0){
            Text("About the Plant")
                .font(Font.custom("Onest-Medium", size: 12))
                .foregroundStyle(.black)
                .padding(.bottom,8)
            
            VStack(alignment:.leading,spacing:2){
                Text("A non-vining and big-leafed member of the philodendron family, the Philodendron melinonii green is a fuss-free plant. This dark green philodendron variety is an excellent choice if you are looking to add a tropical vibe to your indoor garden. The you should surely go for buying this exotic beauty that will add glories to your indoor garden.")
                    .font(Font.custom("Onest-Medium", size: 12))
                    .foregroundStyle(Color(hex: "828282"))
                    .multilineTextAlignment(.leading)
                    .lineLimit(isViewClose ? 3 : 10)
                Button {
                    isViewClose.toggle();
                } label: {
                    Text(isViewClose ? "Read More" : "Read Less")
                        .font(Font.custom("Onest-SemiBold", size: 12))
                        .foregroundStyle(.black)
                }

            }
        }.padding(.horizontal,12)
    }
}

struct ReviewSlab: View {
    var reviewerName: String;
    var reviewText: String;
    var ratingStars: Int;
    var body: some View {
        VStack(alignment:.leading,spacing:0) {
            HStack(spacing:8){
                Circle()
                    .fill(Color(hex: "E6EAF7"))
                    .overlay(content: {
                        Image(systemName: "person.fill")
                            .foregroundStyle(Color(hex: "#B6B9D7"))
                    })
                    .frame(width:24,height:24)
                Text(reviewerName)
                    .font(Font.custom("Onest-SemiBold", size: 12))
                    .foregroundStyle(.black)
                
            }
            .padding(.bottom,12)
            StarRating(starRating: ratingStars)
                .padding(.bottom,24)
            Text(reviewText)
                .font(Font.custom("Onest-Medium", size: 14))
                .foregroundStyle(.black)
                .padding(.bottom,8)
            
            Text("Reviewed in India on 12 May 2023")
                .font(Font.custom("Onest-Regular", size: 11))
                .foregroundStyle(Color(hex: "828282"))
                .padding(.bottom,8)
            Line()
                .stroke(style: StrokeStyle(lineWidth: 0.4, dash: [5]))
                .foregroundStyle(Color(hex: "#D6D6D6"))
                .frame(height: 1)
                .padding(.bottom,20)
        }
    }
}
