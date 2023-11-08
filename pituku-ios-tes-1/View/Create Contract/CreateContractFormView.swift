//
//  CreateContractFormView.swift
//  pituku-ios-tes-1
//
//  Created by Hubert Daryanto on 08/11/23.
//

import SwiftUI

struct CreateContractFormView: View {
    @Environment (\.presentationMode) var presentationMode
    @State private var searchText: String = ""
    var body: some View {
        //custom nav bar
        VStack(spacing: 18) {
            HStack(alignment: .center) {
                HStack {
                    Image("Arrow left").resizable().aspectRatio(contentMode: .fit).padding(.vertical, 12).onTapGesture {
                        self.presentationMode.wrappedValue.dismiss()
                    }
                    Spacer()
                }.frame(maxWidth: .infinity)
                
                HStack {
                    Text("Create Contract").font(.custom(Roboto.bold.rawValue, size: 16))//no semibold available on google font, so bold is used
                }.frame(maxWidth: .infinity)
                
                HStack {
                    Spacer()
                    Image("history").resizable().aspectRatio(contentMode: .fit).padding(.vertical, 12)
                }.frame(maxWidth: .infinity)
            }.frame(height: 48).padding(.horizontal, 16)
            //MARK: Header
            VStack(alignment: .leading, spacing: 16) {
                Text("Waste Type").foregroundStyle(.black).font(.custom(Roboto.bold.rawValue, size: 22)).frame(maxWidth: .infinity, alignment: .leading)
                Text("Select the type of waste from your company that you want to be picked-up and processed").foregroundColor(Color(red: 0.5, green: 0.55, blue: 0.57)).font(.custom(Roboto.regular.rawValue, size: 14)).frame(maxWidth: .infinity, alignment: .leading)
            }.padding(.bottom, 18).padding(.horizontal, 16)
            //MARK: Segmented Control
            HStack {
                ForEach(DummyWasteType.allCases, id: \.self) { waste in
                    VStack(alignment: .center) {
                        Text(waste.rawValue).font(.custom(Roboto.medium.rawValue, size: 14)).foregroundColor(waste.isActive ? Color.white : Color(red: 0.48, green: 0.8, blue: 0.76))
                    }.frame(maxWidth: .infinity).frame(height: 40).background(
                        Rectangle().foregroundColor(waste.isActive ? Color(red: 0.28, green: 0.6, blue: 0.57) : Color.clear)
                    )
                }
            }.background(
                Rectangle().foregroundColor(.white).border(Color(red: 0.28, green: 0.6, blue: 0.57))
            ).frame(maxWidth: .infinity).padding(.horizontal, 16)
            SearchBar(searchLabel: "Search waste name or code", text: $searchText).padding(.horizontal, 16)
            
            List {
                ForEach(DummyWasteList.allCases, id: \.self) { waste in
                    VStack {
                        HStack(spacing: 8) {
                            Image(waste.dummyWasteIsActive ? "ic_round-check-box" : "ic_round-check-box-inactive").resizable().aspectRatio(contentMode: .fit).frame(width: 24, height: 24)
                            Text(waste.dummyWasteName).font(.custom(Roboto.regular.rawValue, size: 14)).frame(maxWidth: .infinity, alignment: .leading)
                            Text(waste.rawValue).font(.custom(Roboto.regular.rawValue, size: 12)).foregroundColor(Color(red: 0.5, green: 0.55, blue: 0.57))
                        }
                    }.tag(waste.rawValue)
                }
            }.searchable(text: $searchText)
            
            VStack {
                VStack(alignment: .center, spacing: 8) {
                    Text("Next (5 types)")
                        .font(
                            Font.custom(Roboto.regular.rawValue, size: 12)
                                .weight(.medium)
                        )
                        .kerning(0.1)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                }
                .frame(height: 50, alignment: .center).frame(maxWidth: .infinity)
                .background(Color(Color(red: 0.28, green: 0.6, blue: 0.57))).cornerRadius(100).padding(.horizontal, 16).padding(.vertical, 26)
            }
        }.toolbar(.hidden)
        
        
    }
}

#Preview {
    CreateContractFormView()
}
