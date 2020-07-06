//
//  BotType.swift
//  pssamcKit
//
//  Created by Eduardo Pinto on 05/07/20.
//

import Foundation

protocol BotType {
    func config() throws
    var name: String { get }

    var path: String { get }
    var configPath: String { get }
    var targetPath: String { get }
    var hexPath: String { get }
}

extension BotType {
    var path: String {
        return "./Bots/\(name)"
    }

    var configPath: String {
        return "\(path)/Config.h"
    }

    var targetPath: String {
        return "\(path)/\(name)"
    }

    var hexPath: String {
        return "\(targetPath).hex"
    }
}
