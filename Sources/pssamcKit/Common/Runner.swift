//
//  Runner.swift
//  pssamcKit
//
//  Created by Eduardo Pinto on 05/07/20.
//

import Foundation
import SwiftCLI

struct Runner {
    let device: Device
    let bot: BotType

    func run() throws {
        let microcontroller = device.microcontroller.rawValue
        let port = device.port
        let targetPath = bot.targetPath
        let hexPath = bot.hexPath

        try bot.config()

        try sed("^MCU.*", with: "MCU = \(microcontroller)", on: "makefile")
        try sed("^TARGET.*", with: "TARGET = \(targetPath)", on: "makefile")

        try Task.run(bash: "make")

        try Task.run(bash: "avrdude -p \(microcontroller) -P \(port) -c avr109 -U flash:w:\(hexPath)")
    }
}
