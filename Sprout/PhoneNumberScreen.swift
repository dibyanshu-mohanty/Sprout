//
//  PhoneNumberScreen.swift
//  Sprout
//
//  Created by Dibyanshu Mohanty on 09/10/23.
//

import SwiftUI

struct PhoneNumberScreen: View {
    @State var textFieldString: String = "";
    @Environment(\.dismiss) private var dismiss
    
    func validateText() -> Bool{
        if(textFieldString.count != 10){
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
                
                Text("Enter your phone number")
                    .font(Font.custom("Onest-SemiBold", size: 20))
                    .fontWeight(.bold)
                    .padding(.bottom,16)
                
                Text("You can log in or make you account if you’re new to Sprout.")
                    .font(Font.custom("Onest-Medium", size: 16))
                    .fontWeight(.medium)
                    .foregroundStyle(Color("greyColor"))
                    .padding(.bottom,48)
                
                HStack(spacing:1) {
                    Text("Phone number")
                    .font(Font.custom("Onest-SemiBold", size: 12))
                    .fontWeight(.semibold)
                    .foregroundStyle(Color("greyColor"))
                    Text("*")
                    .font(Font.custom("Onest-SemiBold", size: 12))
                    .fontWeight(.semibold)
                    .foregroundStyle(.red)
                }
                
                HStack{
                    ISONumber()
                    TextField(text: $textFieldString) {
                        Text("1002345678")
                            .font(Font.custom("Onest-Medium", size: 16))
                            .fontWeight(.medium)
                    }
                    .textFieldStyle(PlainTextFieldStyle())
                    .keyboardType(.numberPad)
                }
                
                
                Spacer()
                NavigationLink {
                    OTPScreen(phoneNumber: textFieldString)
                } label: {
                    Text("Continue")
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
                .isDetailLink(true)
                .disabled(!validateText())
                

                
                
            }
            .padding(.horizontal,16)
            .toolbar(.hidden)
        }
    }
}

#Preview {
    PhoneNumberScreen()
}

struct ISONumber: View {
    func flag(country:String) -> String {
        let base : UInt32 = 127397
        var s = ""
        for v in country.unicodeScalars {
            s.unicodeScalars.append(UnicodeScalar(base + v.value)!)
        }
        return String(s)
    }
    var body: some View {
        Capsule()
            .stroke(.gray, lineWidth: 1)
            .fill(Color("greyBackground"))
            
            .frame(width: 60,height: 30)
            .overlay {
                HStack(spacing:6) {
                    Text(
                        flag(country:"IN"))
                    .font(Font.custom("Onest-Medium", size: 12))
                    Text(
                        "+91")
                    .font(Font.custom("Onest-Medium", size: 12))
                }
            }
    }
}
