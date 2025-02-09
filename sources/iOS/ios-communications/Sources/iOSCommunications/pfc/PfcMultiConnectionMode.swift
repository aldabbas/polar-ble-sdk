//
//  PfcMultiConnectionMode.swift
//  iOSCommunications
//
//  Created by Ahmad AlDabbas on 22/05/2024.
//  Copyright © 2024 Polar. All rights reserved.
//

import Foundation

public enum PfcMultiConnectionMode: UInt8, CaseIterable {
    case disabled = 0
    case enabled = 1
    
    static func fromResponse(multiConnectionByte: UInt8) -> PfcMultiConnectionMode {
        if let pmdSdkMode = PfcMultiConnectionMode(rawValue: multiConnectionByte) {
            return pmdSdkMode
        } else {
            BleLogger.error("the byte \(multiConnectionByte) is not in the range of the PfcMultiConnectionMode valid values")
            return .disabled
        }
    }
}
