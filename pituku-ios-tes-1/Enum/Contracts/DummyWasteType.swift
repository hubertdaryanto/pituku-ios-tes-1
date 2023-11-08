//
//  DummyWasteType.swift
//  pituku-ios-tes-1
//
//  Created by Hubert Daryanto on 08/11/23.
//

import Foundation

enum DummyWasteType: String, CaseIterable {
    case b3 = "B3 Waste"
    case nonB3 = "Non-B3 Waste"
    
    var isActive: Bool {
        switch self {
        case .b3:
            return true
        case .nonB3:
            return false
        }
    }
}
