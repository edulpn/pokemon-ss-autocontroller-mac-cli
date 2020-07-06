//
//  BerryFarmerBot.swift
//  pssamcKit
//
//  Created by Eduardo Pinto on 05/07/20.
//

import Foundation
import SwiftCLI

struct BerryFarmerBot: BotType {
    let name: String = "BerryFarmer"

    let calendar: Calendar
    let iterationsToSave: Int

    func config() throws {
        try sed("^uint8_t m_JP_EU_US.*", with: "uint8_t m_JP_EU_US = \(calendar.code);", on: configPath)
        try sed("^uint16_t m_saveAt.*", with: "uint16_t m_saveAt = \(iterationsToSave);", on: configPath)
    }
}
