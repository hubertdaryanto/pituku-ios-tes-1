//
//  ModelHomeTabBar.swift
//  pituku-ios-tes-1
//
//  Created by Hubert Daryanto on 07/11/23.
//

import Foundation

enum ModelHomeTabBar: Int, CaseIterable{
    case home = 0
    case wallet = 1
    case status = 2
    case profile = 3
    
    var title: String{
        switch self {
        case .home:
            return "Home"
        case .wallet:
            return "Wallet"
        case .status:
            return "Status"
        case .profile:
            return "Profile"
        }
    }
    
    var iconName: String{
        switch self {
        case .home:
            return "Home"
        case .wallet:
            return "Wallet inactive"
        case .status:
            return "Status inactive"
        case .profile:
            return "Profile inactive"
        }
    }
}
