//
//  AutoLotoBot.swift
//  pssamcKit
//
//  Created by Eduardo Pinto on 30/09/20.
//

import Foundation
import SwiftCLI

struct AutoLotoBot: BotType {
    let name: String = "AutoLoto"

    let calendar: Calendar
    let daysToSkip: Int

    func config() throws {
        try sed("^uint8_t m_JP_EU_US.*", with: "uint8_t m_JP_EU_US = \(calendar.code);", on: configPath)
        try sed("^unsigned int m_dayToSkip.*", with: "unsigned int m_dayToSkip = \(daysToSkip);", on: configPath)
    }
}
