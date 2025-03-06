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
            path: "Frameworks/SendbirdAIAgent.xcframework.zip"
        ),
        .target(
            name: "SendbirdAIAgentSupport",
            dependencies: [
                .product(name: "AIAgentCore", package: "AIAgentCore")
            ]
        )
    ]
)
