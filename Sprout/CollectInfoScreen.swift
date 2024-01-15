//
//  CollectInfoScreen.swift
//  Sprout
//
//  Created by Dibyanshu Mohanty on 09/10/23.
//

import SwiftUI

struct CollectInfoScreen: View {
    @State var nameFieldString: String = "";
    @Environment(\.dismiss) var dismiss;
    func validateText() -> Bool{
        if(nameFieldString.count < 2){
            return false;
        }
        return true;
    }
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading){
                HStack(){
                    Button(action: {
                        dismiss();
                    }, label: {
                        Image(systemName: "arrow.backward")
                            .foregroundStyle(.black)
                    })
                    Spacer()
                    Text("Get Started")
                        .font(Font.custom("Onest-SemiBold", size: 18))
                        .fontWeight(.semibold)
                        .fontDesign(.rounded)
                    Spacer()
                }
                .padding(.bottom,60)
                
                Text("What should we call you?")
                    .font(Font.custom("Onest-SemiBold", size: 20))
                    .fontWeight(.bold)
                    .padding(.bottom,32)
                
                HStack(spacing:1) {
                    Text("Name")
                    .font(Font.custom("Onest-SemiBold", size: 12))
                    .fontWeight(.semibold)
                    .foregroundStyle(Color("greyColor"))
                    Text("*")
                    .font(Font.custom("Onest-SemiBold", size: 12))
                    .fontWeight(.semibold)
                    .foregroundStyle(.red)
                }
                
     
                    
                    TextField(text: $nameFieldString) {
                        Text("Alphabet, no emoji or symbols")
                            .font(Font.custom("Onest-Medium", size: 16))
                            .fontWeight(.medium)
                    }
                    .textFieldStyle(PlainTextFieldStyle())
                
                    .keyboardType(.alphabet)
                    
                    
                
                
                
                Spacer()
                NavigationLink {
                    SplashScreen()
                } label: {
                    Text("Let's Go")
                        .font(Font.custom("Onest-SemiBold", size: 16))
                        .shadow(color:.black.opacity(0.15),radius: 1,x:1,y:1)
                        .foregroundStyle(.white)
                        .padding()
                        .frame(maxWidth: .infinity,maxHeight: 56)
                        .background(
                            Color(
                                !validateText()
                                ? "greyColor"
                                :
                                "primaryColor").cornerRadius(12)
                        )
                        .shadow(color: .black.opacity(0.12), radius: 4, x: 1, y: 1)
                        .shadow(color: .black.opacity(0.12), radius: 4, x: -1, y: -1)
                }
                .disabled(!validateText())

                
                
            }
            .padding(.horizontal,16)
            .toolbar(.hidden)
        }
    }
}

#Preview {
    CollectInfoScreen()
}
