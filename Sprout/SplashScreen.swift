//
//  SplashScreen.swift
//  Sprout
//
//  Created by Dibyanshu Mohanty on 09/10/23.
//

import SwiftUI

struct SplashScreen: View {
    @State var isSplashLoaded: Bool = false;

    func onSplashLoaded(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        withAnimation {
                            isSplashLoaded = true;
                        }
                    }
   
        
    }
    var body: some View {
        VStack{
            if isSplashLoaded{
                AuthScreen()
            } else {
                Image("splash")
                    .resizable()
                    .frame(width:UIScreen.main.bounds.size.width,height: UIScreen.main.bounds.size.height
                    )
                    .ignoresSafeArea(SafeAreaRegions.container)
            }
             
        }
        .onAppear(perform: {
             onSplashLoaded();
        })

    }
}

#Preview {
    SplashScreen()
}
