//
//  Navbar.swift
//  Sprout
//
//  Created by Dibyanshu Mohanty on 26/11/23.
//

import SwiftUI

struct Navbar: View {
    var body: some View {
        VStack {
            TabView(content: {
                Group{
                HomeScreen()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                            .font(Font.custom("Onest-Medium", size: 14))
                            .foregroundStyle(Color(hex: "#828282"))
                    }.tag("home")
              
                
                BlogsScreen()
                    .tabItem {
                        Image(systemName: "leaf.fill")
                        Text("Leaf Tips")
                            .font(Font.custom("Onest-Medium", size: 14))
                            .foregroundStyle(Color(hex: "#828282"))
                    }.tag("blogs")
                
                GardenScreen()
                    .tabItem {
                        Image(systemName: "bolt.heart.fill")
                        Text("My Garden")
                            .font(Font.custom("Onest-Medium", size: 14))
                            .foregroundStyle(Color(hex: "#828282"))
                    }.tag("garden")
            }
                
                .toolbar(.visible, for: .tabBar)
                .toolbarBackground(.white, for: .tabBar)
            
                
                   
            })
            .tint(.primaryDarkGreen)
            .onAppear(perform: {
                UITabBar.appearance().barTintColor = UIColor.white
                UITabBarAppearance().shadowColor = UIColor.black
                UITabBar.appearance().shadowImage = UIImage(named: "tab-shadow")?.withRenderingMode(.alwaysTemplate)
                
                
            
        })
        }

        
    }
}

#Preview {
    Navbar()
}
