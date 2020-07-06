//
//  TurboACommand.swift
//  pssamcKit
//
//  Created by Eduardo Pinto on 06/07/20.
//

import Foundation
import SwiftCLI

class TurboACommand: Command {
    func execute() throws {
        let bot = TurboABot()
        let device = try Device()
        let runner = Runner(device: device, bot: bot)

        try runner.run()
    }

    var name: String = "turboa"
    var shortDescription: String = "TurboA bot. Presses the A button indefinitelly. Use it for Cram-o-matic, Digging Duo or even for fossil ressurection automation. In this case, it's recommended to use the AutoFossil bot."
}
