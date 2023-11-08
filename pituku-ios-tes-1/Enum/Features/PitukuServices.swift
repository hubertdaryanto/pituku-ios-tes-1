//
//  PitukuServices.swift
//  pituku-ios-tes-1
//
//  Created by Hubert Daryanto on 08/11/23.
//

import Foundation

enum PitukuServices: String, CaseIterable {
    case inquiry = "Inquiry Request"
    case pickup = "Pickup Request"
    case report = "All Report"
    case support = "Client Support"
    
    var iconName: String {
        switch self {
        case .inquiry:
            return "handshake"
        case .pickup:
            return "fast-delivery"
        case .report:
            return "folder"
        case .support:
            return "chat-box"
        }
    }
}
