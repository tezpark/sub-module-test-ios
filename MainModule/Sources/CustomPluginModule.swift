//
//  CustomPluginModule.swift
//  AIAgentCore
//
//  Created by Tez Park on 2/14/25.
//

import Foundation
import AIAgentCore

open class CustomPluginModule: DefaultPluginModule {
    override open func pluginMethod() {
        print("[custom] test core")
        print("[custom] same version: added message")
    }
}
