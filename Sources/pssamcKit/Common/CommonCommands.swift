//
//  CommonCommands.swift
//  pssamcKit
//
//  Created by Eduardo Pinto on 05/07/20.
//

import Foundation
import SwiftCLI

func sed(_ string1: String, with string2: String, on file: String) throws {
    let command = "sed \"s~\(string1)~\(string2)~\" \(file) > tmpfile ; mv tmpfile \(file)"
    try Task.run(bash: command)
}
