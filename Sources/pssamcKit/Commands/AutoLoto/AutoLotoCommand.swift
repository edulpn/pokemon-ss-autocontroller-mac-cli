//
//  AutoLotoCommand.swift
//  SwiftCLI
//
//  Created by Eduardo Pinto on 30/09/20.
//

import Foundation
import SwiftCLI

class AutoLotoCommand: Command {
    
    func execute() throws {
        let calendar = try Calendar(format: calendarFormat)
        let daysToSkip = Int(self.daysToSkip ?? "0") ?? 0

        let bot = AutoLotoBot(calendar: calendar,
                              daysToSkip: daysToSkip)

        let device = try Device()
        let runner = Runner(device: device, bot: bot)

        try runner.run()
    }

    var name: String = "autoloto"
    var shortDescription: String = "Auto Loto bot. Takes calendar type, e.g. 'us' (default), 'jp' or 'eu', and days to skip before the bot stops (defaults to 0, which is infinite runs) as optional parameters."

    @Param var calendarFormat: String?
    @Param var daysToSkip: String?
}
