//
//  HomeView.swift
//  pituku-ios-tes-1
//
//  Created by Hubert Daryanto on 07/11/23.
//

import SwiftUI

struct HomeView: View {
    @State private var currentBannerPage: Int = 0
    @State private var showCreateContractView: Bool = false
    var body: some View {
        VStack {
            //MARK: Header
            HStack {
                VStack(alignment: .leading, spacing: 6) {
                    Text("Hi, Davis Dias!").foregroundStyle(.white).font(.custom(Roboto.medium.rawValue, size: 20))
                    Text("Please check email to verify!").foregroundStyle(.white).font(.custom(Roboto.regular.rawValue, size: 14)).frame(alignment: .leading).padding(.bottom, 10)
                    VStack(alignment: .center, spacing: 8) {
                        Text("Resend")
                            .font(
                                Font.custom(Roboto.regular.rawValue, size: 12)
                                    .weight(.medium)
                            )
                            .kerning(0.1)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.28, green: 0.6, blue: 0.57))
                    }
                    .frame(width: 80, height: 30, alignment: .center)
                    .background(.white)
                    
                    .cornerRadius(100)
                }.frame(maxWidth: .infinity).frame(alignment: .top)
                
                Image("Header").resizable().aspectRatio(contentMode: .fit).frame(width: 100)
                Spacer().frame(width: 45)
            }.background(
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(height: 250)
                    .background(Color(red: 0.28, green: 0.6, blue: 0.57))
            )
            
            
            ScrollView {
                VStack(spacing: 16) {
                    TabView(selection: $currentBannerPage) {
                        ForEach(0..<3, id: \.self) { index in
                            ZStack {
                              Rectangle()
                                .frame(height: 156)
                                .foregroundColor(Color(red: 0.28, green: 0.60, blue: 0.57))
                                .cornerRadius(20)
                                HStack {
                                    //MARK: Text Banner
                                    VStack(alignment: .leading, spacing: 10) {
                                        Text("Lorem ipsum").font(Font.custom(Roboto.medium.rawValue, size: 18)).foregroundColor(.white)
                                        Text("Lorem ipsum dolor sit amet consectetur.Consequat sed cursus.")
                                            .font(Font.custom(Roboto.regular.rawValue, size: 12))
                                            .lineSpacing(6)
                                            .foregroundColor(.white).frame(maxWidth: .infinity, alignment: .leading)
                                    }.frame(maxWidth: .infinity).padding(.leading, 18)
                                    Circle()
                                      .foregroundColor(.clear)
                                      .frame(width: 220, height: 220)
                                      .background(
                                        Image("Banner Background").resizable().aspectRatio(contentMode: .fill).ignoresSafeArea()
                                      ).clipped()
                                      .offset(x: 40)
                                }
                            }
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always)) .frame(height: 156).padding(.top, 10)
                    //MARK: Feature
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Pituku services").font(Font.custom(Roboto.medium.rawValue, size: 14)).foregroundColor(.black)
                        HStack(alignment: .top) {
                            ForEach(PitukuServices.allCases, id: \.self) { service in
                                VStack(alignment: .center) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 14).foregroundColor(Color(red: 0.95, green: 0.96, blue: 0.96))
                                        Image(service.iconName).resizable().aspectRatio(contentMode: .fit).padding(.all, 15)
                                    }.aspectRatio(1.0, contentMode: .fit)
                                    Text(service.rawValue).font(Font.custom(Roboto.regular.rawValue, size: 10)).foregroundColor(.black).multilineTextAlignment(.center).frame(maxWidth: .infinity, alignment: .center)
                                }.onTapGesture {
                                    if service == .inquiry {
                                        self.showCreateContractView.toggle()
                                    }
                                }
                            }
                        }
                    }
                    
                    //MARK: How Pituku Works
                    VStack(alignment: .leading, spacing: 16) {
                        Text("How Pituku works?").font(Font.custom(Roboto.medium.rawValue, size: 14)).foregroundColor(.black)
                        ZStack {
                          Rectangle()
                            .frame(height: 156)
                            .foregroundColor(Color(red: 0.38, green: 0.67, blue: 0.93))
                            .cornerRadius(20)
                            HStack {
                                Image("How Pituku Works").resizable().aspectRatio(contentMode: .fit).padding(.top, 11).frame(maxWidth: .infinity)
                                VStack(alignment: .leading, spacing: 10) {
                                    Text("Lorem ipsum").foregroundStyle(.white).font(.custom(Roboto.medium.rawValue, size: 20))
                                    Text("Lorem ipsum dolor sit amet consectetur.").foregroundStyle(.white).font(.custom(Roboto.regular.rawValue, size: 14)).frame(alignment: .leading).padding(.bottom, 6)
                                    VStack(alignment: .center, spacing: 8) {
                                        Text("Let’s Go")
                                            .font(
                                                Font.custom(Roboto.regular.rawValue, size: 12)
                                                    .weight(.medium)
                                            )
                                            .kerning(0.1)
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(Color(red: 0.38, green: 0.67, blue: 0.93))
                                    }
                                    .frame(width: 80, height: 30, alignment: .center)
                                    .background(.white)
                                    
                                    .cornerRadius(100)
                                }.frame(maxWidth: .infinity).padding(.trailing, 16)
                            }
                        }.frame(height: 156)
                    }.padding(.vertical, 20)
                    
                }.padding(.horizontal, 16)
            }.background(
                Rectangle().foregroundStyle(.white).clipShape(RoundedRectangle(cornerRadius: 30)).offset(y: -16)
            )
        }.navigationDestination(isPresented: $showCreateContractView, destination: {
            CreateContractView()
        })
    }
}

#Preview {
    HomeView()
}
