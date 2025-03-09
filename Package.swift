// swift-tools-version:5.10
import PackageDescription

let package = Package(
    name: "SendbirdAIAgent",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "SendbirdAIAgent", targets: ["SendbirdAIAgent"])
    ],
    dependencies: [
        // Add GitHub repository dependency
        .package(url: "https://github.com/tezpark/module-test-ios.git", from: "1.0.14")
    ],
    targets: [
        .target(
            name: "SendbirdAIAgent",
            dependencies: [
                .product(name: "AIAgentCore", package: "module-test-ios")
            ]
        )
    ]
)
