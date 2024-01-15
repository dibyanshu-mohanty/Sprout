//
//  OTPScreen.swift
//  Sprout
//
//  Created by Dibyanshu Mohanty on 09/10/23.
//

import SwiftUI

struct OTPScreen: View {
    var phoneNumber: String;
    @State var otpFieldString: String = "";
    @State private var timeLeft = 30
    @Environment(\.dismiss) var dismiss;
    
    var timer =  Timer.publish(every: 1, on: .main, in: .common).autoconnect();
    
    func validateText() -> Bool{
        if(otpFieldString.count != 4){
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
                
                Text("Enter OTP code")
                    .font(Font.custom("Onest-SemiBold", size: 20))
                    .fontWeight(.bold)
                    .padding(.bottom,16)
                
                Text("You only have to enter an OTP code we sent via SMS to your registered phone number \(phoneNumber)")
                    .font(Font.custom("Onest-Medium", size: 16))
                    .fontWeight(.medium)
                    .foregroundStyle(Color("greyColor"))
                    .padding(.bottom,48)
                
                HStack(spacing:1) {
                    Text("OTP")
                    .font(Font.custom("Onest-SemiBold", size: 12))
                    .fontWeight(.semibold)
                    .foregroundStyle(Color("greyColor"))
                    Text("*")
                    .font(Font.custom("Onest-SemiBold", size: 12))
                    .fontWeight(.semibold)
                    .foregroundStyle(.red)
                }
                
                HStack{
                    
                    TextField(text: $otpFieldString) {
                        Text("1234")
                            .font(Font.custom("Onest-Medium", size: 16))
                            .fontWeight(.medium)
                    }
                    .textFieldStyle(PlainTextFieldStyle())
                    .keyboardType(.numberPad)
                    
                   
                    Text(
                        timeLeft == 0
                        ? "Resend"
                        : timeLeft < 10
                            ? "00:0\(timeLeft)"
                        : "00:\(timeLeft)")
                        .font(Font.custom("Onest-SemiBold", size: 14))
                        .fontWeight(.semibold)
                        .onTapGesture {
                            timeLeft = 30;
                        }
                        .onReceive(timer) { time in
                            if timeLeft > 0 {
                                timeLeft -= 1
                            }
                        }
                }
                
                
                Spacer()
                NavigationLink {
                    WelcomeScreen()
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
                .isDetailLink(false)
                .disabled(!validateText())

                
                
            }
            .padding(.horizontal,16)
            .toolbar(.hidden)
        }
    }
}

#Preview {
    OTPScreen(phoneNumber: "")
}
