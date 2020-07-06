//
//  Device.swift
//  pssamcKit
//
//  Created by Eduardo Pinto on 05/07/20.
//

import Foundation
import SwiftCLI

struct Device {
    enum Microcontroller: String, CaseIterable {
        case atmega32u4
        case atmega16u2
        case at90usb1286
    }

    let port: String
    let microcontroller: Microcontroller = .atmega32u4

    init(portPrefix: String = "/dev/tty.usb") throws {

        guard portPrefix.count > 0 else {
            throw CommonError.invalidDevicePortPrefix
        }

        guard let out = try? Task.capture(bash: "ls \(portPrefix)*").stdout.split(separator: "\n").first else {
            throw CommonError.devicePortNotFound
        }

        self.port = String(out)
    }
}
