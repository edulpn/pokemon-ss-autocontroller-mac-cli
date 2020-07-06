//
//  BerryFarmerCommand.swift
//  pssamcKit
//
//  Created by Eduardo Pinto on 05/07/20.
//

import Foundation
import SwiftCLI

class BerryFarmerCommand: Command {

    func execute() throws {
        let calendar = try Calendar(format: calendarFormat)
        let iterations = Int(iterationsToSave ?? "5") ?? 5

        let bot = BerryFarmerBot(calendar: calendar,
                                 iterationsToSave: iterations)
        let device = try Device()
        let runner = Runner(device: device, bot: bot)

        try runner.run()
    }

    var name: String = "berryfarmer"
    var description: String = "Berry Farmer bot. Takes calendar type, e.g. 'us' (default), 'jp' or 'eu', and iterations to save (defaults to 5) as optional parameters."

    @Param var calendarFormat: String?
    @Param var iterationsToSave: String?
}
