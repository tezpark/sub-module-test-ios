//
//  MainModule.swift
//  AIAgentCore
//
//  Created by Tez Park on 2/13/25.
//

import Foundation
@_exported import AIAgentCore

public class MainModule: NSObject {
    var base: AIAgentMain?
    public override init() {
        super.init()
    }
    
    public func initializer() {
        PluginSet.pluginModule = CustomPluginModule.self
        self.base = AIAgentMain()
        self.base?.baseInitializer()
    }
}

public extension AIAgentMain {
    public func newInitializer() {
        PluginSet.pluginModule = CustomPluginModule.self
        
        self.baseInitializer()
    }
}
