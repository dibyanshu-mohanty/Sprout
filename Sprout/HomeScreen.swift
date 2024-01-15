//
//  HomeScreen.swift
//  Sprout
//
//  Created by Dibyanshu Mohanty on 10/11/23.
//

import SwiftUI



struct HomeScreen: View {
    @State var textfieldText: String = "";

    var body: some View {
        NavigationStack {
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
                    SeachField(textfieldText: $textfieldText)
                    
                    TabView{
                        CarouselCardOne()
                        CarouselCardTwo()
                    }
                    .frame(height: 190)
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    .padding(.bottom,48)
                    
                    HStack{
                        VStack {
                            Divider()
                                .frame(width: nil)
                            
                        }
                        Text("CATEGORIES")
                            .font(Font.custom("Onest-Medium", size: 12))
                            .foregroundStyle(Color(hex: "#2D2D2D"))
                            .fontDesign(.rounded)
                          
                            .padding(.horizontal,12)
                        VStack {
                            Divider()
                                .frame(width: nil)
                                
                        }
                    }.padding(.bottom,16)
                        .padding(.horizontal,12)
                    Grid()
                    
                    HStack{
                        VStack {
                            Divider()
                                .frame(width: 64)
                        }
                        Text("RECOMMENDED DEALS FOR YOU")
                            .font(Font.custom("Onest-Medium", size: 12))
                            .foregroundStyle(Color(hex: "#2D2D2D"))
                            .fontDesign(.rounded)
                          
                            .padding(.horizontal,12)
                        VStack {
                            Divider()
                                .frame(width: 64)
                        }
                    }.padding(.bottom,16)
                        .padding(.horizontal,12)
                    
                    VStack{
                        ForEach(0..<GlobalConstants().images.count,id: \.self) {
                            index in
                            PlantCard(imageText: GlobalConstants().images[index])
                        }
                    }
                    
                    HStack{
                        VStack {
                            Divider()
                                .frame(width: nil)
                        }
                   
                            Text("Upto 50% OFF")
                                .font(Font.custom("Onest-Medium", size: 12))
                                .foregroundStyle(Color(hex: "#2D2D2D"))
                                .fontDesign(.rounded)
                              
                            .padding(.horizontal,12)
                            
                            
                        
                        VStack {
                            Divider()
                                .frame(width: nil)
                        }
                    }
                    .padding(.horizontal,12)
                    VStack(spacing:0){
                        Text("Buy gardening essentials")
                            .font(Font.custom("Onest-Regular", size: 11))
                            .foregroundStyle(Color(hex: "#828282"))
                            .padding(.bottom,16)
                    }
                    
                    
                    TabView{
                        CarouselCardThree()
                        CarouselCardFour()
                    }
                    .frame(height: 190)
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    .padding(.bottom,48)
                    
                    HStack{
                        VStack {
                            Divider()
                                .frame(width: nil)
                        }
                   
                            Text("MIN. OF 40% OFF")
                                .font(Font.custom("Onest-Medium", size: 12))
                                .foregroundStyle(Color(hex: "#2D2D2D"))
                                .fontDesign(.rounded)
                              
                            .padding(.horizontal,12)
                            
                            
                        
                        VStack {
                            Divider()
                                .frame(width: nil)
                        }
                    }
                    .padding(.horizontal,12)
                    VStack(spacing:0){
                        Text("Grow your own vegetables and herbs at home")
                            .font(Font.custom("Onest-Regular", size: 11))
                            .foregroundStyle(Color(hex: "#828282"))
                            .padding(.bottom,16)
                    }
                    LazyVGrid(columns: [
                        GridItem(.flexible(),spacing: 16,alignment: .center),
                        GridItem(.flexible(),spacing: 16,alignment: .center),
                    ],alignment: .center,spacing: 20) {
                        Section(content: {
                            ForEach(0..<GlobalConstants().gridImages.count,id: \.self){
                                index in
                                RoundedRectangle(cornerRadius: 12)
                                    .frame(height: 175)
                                    .overlay {
                                        ZStack(alignment: .bottomLeading){
                                            ImageView(urlString: GlobalConstants().gridImages[index])
                                                .frame(height:175)
                                                .scaledToFit()
                                                .cornerRadius(12)
                                            
                                            RoundedRectangle(cornerRadius: 12)
                                                .frame(height: 120)
                                                .foregroundStyle(LinearGradient(colors: [
                                                    .primaryBlack,
                                                    .primaryBlack.opacity(0.9),
                                                    .primaryBlack.opacity(0.0),
                                                ], startPoint: .bottom, endPoint: .top))
                                            
                                            HStack{
                                                Text(GlobalConstants().gridNames[index])
                                                    .padding(EdgeInsets(top: 0, leading: 8, bottom: 16, trailing: 24))
                                                    .font(Font.custom("Onest-SemiBold", size: 16))
                                                    .multilineTextAlignment(.leading)
                                                    .foregroundStyle(.white)
                                            }
                                                
                                        }
                                 
                                    }
                            }
                        })
                    }
                    .padding(.horizontal,12)
                    .padding(.bottom,48)
                    
                    HStack{
                        VStack {
                            Divider()
                                .frame(width: 64)
                        }
                   
                            Text("LEARN TO BETTER YOUR GARDEN")
                                .font(Font.custom("Onest-Medium", size: 12))
                                .foregroundStyle(Color(hex: "#2D2D2D"))
                                .fontDesign(.rounded)
                              
                            .padding(.horizontal,12)
                            
                            
                        
                        VStack {
                            Divider()
                                .frame(width: 64)
                        }
                    }
                    VStack(spacing:0){
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
                        .padding(.bottom,32)
                }
            }
        }
        .toolbar(.hidden)
    }
}

#Preview {
    HomeScreen()
}


struct SeachField: View {
    @Binding var textfieldText: String;
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .foregroundStyle(.white)
            .shadow(color: Color("primaryBlack").opacity(0.1),radius: 16,x: 0, y:8)
            .overlay(content: {
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color(hex: "#D6D6D6"),style: StrokeStyle(lineWidth: 0.5))
                    .foregroundStyle(.white)
                    .overlay {
                        HStack(content: {
                            Image(systemName: "magnifyingglass")
                                .foregroundStyle(Color(hex: "#0E401D"))
                            TextField(text: $textfieldText, label: {
                                Text("Search 'rose'")
                                    .font(Font.custom("Onest-Medium", size: 14))
                                    .foregroundStyle(Color(hex: "#828282"))
                                
                            })
                            .padding(.horizontal,6)
                            Spacer()
                            Rectangle()
                                .frame(width: 1)
                                .foregroundStyle(Color(hex: "#EBEBEB"))
                                .padding(.vertical,8)
                                .padding(.horizontal,8)
                            Image(systemName: "mic")
                            
                                .resizable()
                                .frame(width: 13,height: 18)
                            
                        })
                        .padding(.horizontal,8)
                    }
                
            })
            .frame(height: 48)
            .padding(.horizontal,12)
            .padding(.bottom,24)
    }
}


struct CarouselCardOne: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .foregroundStyle(LinearGradient(colors: [
                Color(hex: "#33783A"),
                Color(hex: "#1B4414")
            ], startPoint: .topLeading, endPoint: .bottomTrailing))
            .padding(.horizontal,12)
            .overlay {
                HStack {
                    VStack(alignment:.leading){
                        
                        Text("Get 50% OFF")
                            .font(Font.custom("Onest-Bold", size: 24))
                            .foregroundStyle(.white)
                            .padding(.bottom,12)
                            .padding(.top,24)
                        
                        Text("Celebrate International Plant Health Day!")
                            .font(Font.custom("Onest-Medium", size: 14))
                            .foregroundStyle(.white)
                        Spacer()
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("ORDER NOW")
                                .font(Font.custom("Onest-Bold", size: 12))
                                .foregroundStyle(.darkGreen)
                                .padding(.all,8)
                                .background(.white)
                                .cornerRadius(4)
                                .shadow(color: .black.opacity(0.12),radius: 16,x:0,y:8)
                                .padding(.bottom,30)
                        })
                    }
                    .padding(.horizontal,26)
                    Spacer()
                    Image("waterMug")
                        .resizable()
                        .frame(width: 160)
                        .cornerRadius(25)
                        .padding(.vertical,0)
                        .padding(.trailing,12)
                    
                }
            }
    }
}

struct CarouselCardTwo: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .foregroundStyle(LinearGradient(colors: [
                Color(hex: "#2E879A"),
                Color(hex: "#006165")
            ], startPoint: .topLeading, endPoint: .bottomTrailing))
            .padding(.horizontal,12)
            .overlay {
                HStack {
                    VStack(alignment:.leading){
                        
                        Text("Offers for YOU")
                            .font(Font.custom("Onest-Bold", size: 22))
                            .foregroundStyle(.white)
                            .padding(.bottom,12)
                            .padding(.top,24)
                        
                        Text("Now is the time to buy")
                            .font(Font.custom("Onest-Medium", size: 14))
                            .foregroundStyle(.white)
                        Spacer()
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("ORDER NOW")
                                .font(Font.custom("Onest-Bold", size: 12))
                                .foregroundStyle(Color(hex: "#006165"))
                                .padding(.all,8)
                                .background(.white)
                                .cornerRadius(4)
                                .shadow(color: .black.opacity(0.12),radius: 16,x:0,y:8)
                                .padding(.bottom,30)
                        })
                    }
                    .padding(.horizontal,26)
                    Spacer()
                    Image("waterMug")
                        .resizable()
                        .frame(width: 160)
                        .cornerRadius(25)
                        .padding(.vertical,0)
                        .padding(.trailing,12)
                    
                }
            }
    }
}

struct CarouselCardThree: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .stroke(Color(hex: "#EBEBEB"),lineWidth: 1)
            .shadow(color: .black.opacity(0.3), radius: 16,x: 0,y: 4)
            .foregroundStyle(.white)
          
            .padding(.horizontal,12)
            
            .overlay {
                ZStack(alignment:.topTrailing) {
                   
                  
                    HStack {
                        VStack(alignment:.leading){
                            
                            Text("Stainless Steel Shovels")
                                .font(Font.custom("Onest-Medium", size: 14))
                                .foregroundStyle(Color(hex: "#828282"))
                                .padding(.bottom,12)
                                .padding(.top,24)
                            
                            Text("Flat ₹125 OFF on orders above ₹299")
                                .font(Font.custom("Onest-SemiBold", size: 20))
                                .foregroundStyle(.primaryBlack)
                            Spacer()
                            
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                Text("ORDER NOW")
                                    .font(Font.custom("Onest-Bold", size: 12))
                                    .foregroundStyle(.white)
                                    .padding(.all,8)
                                    .background(Color(hex: "#1B7D3C"))
                                    .cornerRadius(10)
                                    .shadow(color: .black.opacity(0.12),radius: 16,x:0,y:8)
                                    .padding(.bottom,30)
                            })
                        }
                        .padding(.horizontal,26)
                        Spacer()
                        VStack(spacing:0) {
                            ZStack{
                                Image("priceTag")
                                    .resizable()
                                    .frame(width: 80,height: 60)
                                    .padding(.top,10)
                                Text("FLAT\nPRICE")
                                    .font(Font.custom("Onest-Bold", size: 16))
                                    .multilineTextAlignment(.center)
                                    .foregroundStyle(.white)
                                    .padding(.top,14)
                            }
                            .padding(.trailing,12)
                            Image("shovel")
                                .resizable()
                                .frame(width: 100)
                                .cornerRadius(25)
                            .padding(.trailing,12)
                        }
                        
                    }
                }
                .clipped()
            }
            
    }
}

struct CarouselCardFour: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .stroke(Color(hex: "#EBEBEB"),lineWidth: 1)
            
            .foregroundStyle(.white)
        
            .padding(.horizontal,12)
            .shadow(color: .black.opacity(0.3), radius: 16,x: 0,y: 4)
            .overlay {
                ZStack(alignment:.topTrailing) {
               
                    HStack {
                        VStack(alignment:.leading){
                            
                            Text("High Quality Tools")
                                .font(Font.custom("Onest-Medium", size: 14))
                                .foregroundStyle(Color(hex: "#828282"))
                                .padding(.bottom,12)
                                .padding(.top,24)
                            
                            Text("Flat ₹100 OFF on all orders")
                                .font(Font.custom("Onest-SemiBold", size: 20))
                                .foregroundStyle(.primaryBlack)
                            Spacer()
                            
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                Text("ORDER NOW")
                                    .font(Font.custom("Onest-Bold", size: 12))
                                    .foregroundStyle(.white)
                                    .padding(.all,8)
                                    .background(Color(hex: "#1B7D3C"))
                                    .cornerRadius(10)
                                    .shadow(color: .black.opacity(0.12),radius: 16,x:0,y:8)
                                    .padding(.bottom,30)
                            })
                        }
                        .padding(.horizontal,26)
                        Spacer()
                        VStack(spacing:0) {
                            ZStack{
                                Image("priceTag")
                                    .resizable()
                                    .frame(width: 80,height: 60)
                                    
                                    .padding(.top,10)
                                Text("FLAT\nPRICE")
                                    .font(Font.custom("Onest-Bold", size: 16))
                                    .multilineTextAlignment(.center)
                                    .foregroundStyle(.white)
                                    .padding(.top,14)
                                    
                                
                            }
                            Spacer()
                            Image("tools")
                                .resizable()
                                .frame(width: 150,height: 100)
                                .cornerRadius(25)
                            
                            .padding(.trailing,12)
                        }
                        
                    }
                }
            }
    }
}

struct Grid: View {
    let columns: [GridItem] = [GridItem(.flexible(),spacing: 6,alignment: nil),
                               GridItem(.flexible(),spacing: 6,alignment: nil),
                               GridItem(.flexible(),spacing: 6,alignment: nil),
                               GridItem(.flexible(),spacing: 6,alignment: nil)]
    
    let categoryHeader: [String] = [
        "Indoor\nPlants",
        "Flowering\nPlants",
        "Low Light\nPlants",
        "Hanging\nPlants",
        "Fruit\nPlants",
        "Medicinal\nPlants",
        "Aromatic\nPlants",
        "Succlent\nPlants",
    ]
    
    let imageNames: [String] = [
        "grid1",
        "grid2",
        "grid3",
        "grid4",
        "grid5",
        "grid6",
        "grid1",
        "grid7",
    ]
    var body: some View {
        LazyVGrid(columns:columns,spacing: 24) {
            Section {
                ForEach(0..<categoryHeader.count,id: \.self){
                    index in
                    VStack {
                        Circle()
                            .fill(Color(hex: "#EBF9FA"))
                        
                            .overlay {
                                Image(imageNames[index])
                                    .resizable()
                                    .padding(.all,10)
                            }
                            .frame(width: 56,height: 56,alignment: .center)
                            .padding(.bottom,12)
                        
                        Text(categoryHeader[index])
                            .font(Font.custom("Onest-Medium", size: 12))
                            .foregroundStyle(Color(hex: "#2D2D2D"))
                            .multilineTextAlignment(.center)
                    }
                    
                    
                }
            }
        }.padding(.horizontal,12)
            .padding(.bottom,48)
    }
}

struct BlogPost1: View {
    var body: some View {
        VStack(alignment:.leading,spacing:0){
            Image("blogBanner1")
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
            Text("Announcing Zomato Plant India Initiative")
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
    }
}

struct BlogPost2: View {
    var body: some View {
        VStack(alignment:.leading,spacing:0){
            Image("blogBanner2")
                .resizable()
        
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
            Text("Announcing Zomato Plant India Initiative")
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

