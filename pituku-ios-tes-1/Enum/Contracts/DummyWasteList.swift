//
//  DummyWasteList.swift
//  pituku-ios-tes-1
//
//  Created by Hubert Daryanto on 08/11/23.
//

import Foundation

enum DummyWasteList: String, CaseIterable {
    case tetra = "A101a"
    case klisena = "A101b"
    case amonium = "A101c"
    case tetra2 = "A102a"
    case aseton = "A102b"
    case metilenklorida = "A103a"
    case etilAsetat = "A103b"
    case asamHidroklorat = "A103c"
    case asamNitrat = "A105c"
    case karbonTetraklorida = "A106a"
    case kaliumHidroksida = "A107c"
    case kontaminasiB3 = "A108d"
    case asamBelumTerkodifikasi = "A109d"
    case metanol = "A110b"
    case karbonAktif = "A110d"
    
    
    var dummyWasteName: String {
        switch self {
        case .tetra:
            return "Tetrakloroetilen"
        case .klisena:
            return "Ksilena"
        case .amonium:
            return "Amonium hidroksida"
        case .tetra2:
            return "Tetrakloroetilen"
        case .aseton:
            return "Aseton"
        case .metilenklorida:
            return "Metilenklorida"
        case .etilAsetat:
            return "Etil asetat"
        case .asamHidroklorat:
            return "Asam hidroklorat"
        case .asamNitrat:
            return "Asam nitrat"
        case .karbonTetraklorida:
            return "Karbon tetraklorida"
        case .kaliumHidroksida:
            return "Kalium hidroksida"
        case .kontaminasiB3:
            return "Kontaminasi 83"
        case .asamBelumTerkodifikasi:
            return "Asam belum terkodifikasi"
        case .metanol:
            return "Metanol"
        case .karbonAktif:
            return "Karbon aktif"
        }
    }
    
    var dummyWasteIsActive: Bool {
        switch self {
        case .tetra:
            return true
        case .klisena:
            return false
        case .amonium:
            return false
        case .tetra2:
            return false
        case .aseton:
            return true
        case .metilenklorida:
            return false
        case .etilAsetat:
            return true
        case .asamHidroklorat:
            return false
        case .asamNitrat:
            return true
        case .karbonTetraklorida:
            return false
        case .kaliumHidroksida:
            return true
        case .kontaminasiB3:
            return false
        case .asamBelumTerkodifikasi:
            return false
        case .metanol:
            return false
        case .karbonAktif:
            return false
        }
    }
}
