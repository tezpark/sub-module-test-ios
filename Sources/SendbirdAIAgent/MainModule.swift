//
//  MainModule.swift
//  AIAgentCore
//
//  Created by Tez Park on 2/13/25.
//

import Foundation

// Plugin Framework 내부에서는 SPI 권한으로 AIAgentCore의 내부 API에 접근할 수 있고,
// 동시에 @ _exported import를 통해 AIAgentCore의 일반 public API (예: connect())를 앱에 노출한다.
@_spi(PluginOnly) import AIAgentCore
@_exported import AIAgentCore

public extension AIAgentMain {
    func initializer() {
        // Plugin Framework에서는 SPI로 A의 baseInitializer에 접근 가능함.
        PluginSet.pluginModule = CustomPluginModule.self
        
        self.baseInitializer()
    }
}

