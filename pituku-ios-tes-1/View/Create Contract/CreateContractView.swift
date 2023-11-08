//
//  CreateContractView.swift
//  pituku-ios-tes-1
//
//  Created by Hubert Daryanto on 08/11/23.
//

import SwiftUI

struct CreateContractView: View {
    @Environment (\.presentationMode) var presentationMode
    @State private var showCreateContractFormView: Bool = false
    var body: some View {
        //custom nav bar
        VStack {
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
            }.frame(height: 48)
            //MARK: If Empty
            VStack(spacing: 6) {
                Spacer().frame(height: 30)
                Image("No data placeholder").resizable().aspectRatio(contentMode: .fit).frame(width: 210, height: 210)
                Text("There is no list of contract.\nCreate the contract now!").font(.custom(Roboto.regular.rawValue, size: 14)).foregroundColor(Color(red: 0.62, green: 0.67, blue: 0.69))
                HStack(alignment: .center, spacing: 8) {
                    Image("icon plus").resizable().aspectRatio(contentMode: .fit).frame(width: 18, height: 18)
                    Text("Create Contract")
                        .font(
                            Font.custom(Roboto.medium.rawValue, size: 14)
                        )
                        .kerning(0.1)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                }.padding(.horizontal, 16)
                .frame(width: 166, height: 50, alignment: .center)
                .background(RoundedRectangle(cornerRadius: 100).foregroundColor(Color(red: 0.28, green: 0.6, blue: 0.57))).onTapGesture {
                    self.showCreateContractFormView.toggle()
                }.padding(.top, 30)
                
                Spacer()
            }
        }.padding(.horizontal, 16).toolbar(.hidden).navigationDestination(isPresented: $showCreateContractFormView, destination: {
            CreateContractFormView()
        })
    }
}

#Preview {
    CreateContractView()
}
