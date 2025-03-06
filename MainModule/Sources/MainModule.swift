//
//  MainModule.swift
//  AIAgentCore
//
//  Created by Tez Park on 2/13/25.
//

import Foundation
@_exported import AIAgentCore

public class MainModule: NSObject {
    var base: AIAgentBase?
    public override init() {
        super.init()
    }
    
    public func initializer() {
        PluginSet.pluginModule = CustomPluginModule.self
        
        self.base = AIAgentBase()
        self.base?.baseInitializer()
        
        self.base?.__pluginMethod(type: .init)
        
        self.base?.
    }
}

public extension AIAgentBase {
    public func initializer2() {
        PluginSet.pluginModule = CustomPluginModule.self
        
        self.baseInitializer()
    }
}
