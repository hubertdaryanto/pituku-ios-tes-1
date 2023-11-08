//
//  MainTabBarView.swift
//  pituku-ios-tes-1
//
//  Created by Hubert Daryanto on 06/11/23.
//

import SwiftUI

struct MainTabBarView: View {
    @State private var selectedTabBarIndex: Int = 0
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedTabBarIndex) {
                NavigationStack(root: {
                    HomeView()
                }).tag(0)
                
                NavigationStack(root: {
                    VStack {
                        Image(systemName: "globe")
                            .imageScale(.large)
                            .foregroundStyle(.tint)
                        Text("Hello, wallet!")
                    }
                    .padding()
                }).tag(1)
                
                NavigationStack(root: {
                    VStack {
                        Image(systemName: "globe")
                            .imageScale(.large)
                            .foregroundStyle(.tint)
                        Text("Hello, status!")
                    }
                    .padding()
                }).tag(2)
                
                NavigationStack(root: {
                    VStack {
                        Image(systemName: "globe")
                            .imageScale(.large)
                            .foregroundStyle(.tint)
                        Text("Hello, profile!")
                    }
                    .padding()
                }).tag(3)
            }
            
            ZStack{
                HStack{
                    ForEach((ModelHomeTabBar.allCases), id: \.self){ item in
                        Button{
                            selectedTabBarIndex = item.rawValue
                        } label: {
                            CustomTabItem(imageName: item.iconName, title: item.title, isActive: (selectedTabBarIndex == item.rawValue))
                        }
                    }
                }
                .padding(6)
            }
            .frame(height: 70)
            .background(.purple.opacity(0.2))
            .cornerRadius(35)
            .padding(.horizontal, 26)
        }
    }
}

extension MainTabBarView {
    func CustomTabItem(imageName: String, title: String, isActive: Bool) -> some View{
            HStack(spacing: 10){
                Spacer()
                Image(imageName)
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(isActive ? .black : .gray)
                    .frame(width: 20, height: 20)
                if isActive{
                    Text(title)
                        .font(.system(size: 14))
                        .foregroundColor(isActive ? .black : .gray)
                }
                Spacer()
            }
            .frame(width: isActive ? .infinity : 60, height: 60)
            .background(isActive ? .purple.opacity(0.4) : .clear)
            .cornerRadius(30)
        }
}

#Preview {
    MainTabBarView()
}
