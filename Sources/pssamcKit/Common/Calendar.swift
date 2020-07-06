//
//  Calendar.swift
//  pssamcKit
//
//  Created by Eduardo Pinto on 05/07/20.
//

import Foundation

enum Calendar: String, CaseIterable {
    case us = "us"
    case jp = "jp"
    case eu = "eu"

    init(format: String?) throws {
        if let format = format {
            switch format {
            case "us", "jp", "eu":
                if let fromRaw = Self.init(rawValue: format) {
                    self = fromRaw
                } else {
                    throw CommonError.invalidCalendarFormat
                }
            default:
                throw CommonError.invalidCalendarFormat
            }
        } else {
            self = .us
        }
    }

    var code: Int {
        switch self {
        case .eu:
            return 1
        case .jp:
            return 0
        case .us:
            return 2
        }
    }
}
