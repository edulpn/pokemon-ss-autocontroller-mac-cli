//
//  CommonError.swift
//  pssamcKit
//
//  Created by Eduardo Pinto on 05/07/20.
//

import Foundation
import SwiftCLI

enum CommonError: ProcessError {
    case invalidCalendarFormat
    case devicePortNotFound
    case invalidDevicePortPrefix

    var message: String? {
        switch self {
        case .invalidCalendarFormat:
            return "Invalid calendar format. Available: \(Calendar.allCases.map {$0.rawValue})"
        case .devicePortNotFound:
            return "Device port not found."
        default:
            return "Exiting..."
        }
    }

    var exitStatus: Int32 {
        switch self {
        default:
            return 1
        }
    }
}
