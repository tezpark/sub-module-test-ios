// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "SendbirdAIAgent",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "SendbirdAIAgent", targets: ["SendbirdAIAgent", "SendbirdAIAgentSupport"])
    ],
    dependencies: [
        // Add GitHub repository dependency
        .package(name: "AIAgentCore", url: "https://github.com/tezpark/module-test-ios.git", from: "1.0.11")
    ],
    targets: [
        .binaryTarget(
            name: "SendbirdAIAgent",
            url: "https://github.com/tezpark/sub-module-test-ios/raw/tez/Frameworks/SendbirdAIAgent.xcframework.zip",
            checksum: "1cc07e389c8142b888917c069a997754f10ae12bec74bc192626edf2896dca22"
        ),
        .target(
            name: "SendbirdAIAgentSupport",
            dependencies: [
                .product(name: "AIAgentCore", package: "AIAgentCore")
            ]
        )
    ]
)
