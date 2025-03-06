// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "SendbirdAIAgent",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "SendbirdAIAgent", targets: ["SendbirdAIAgent"])
    ],
    dependencies: [
        // Add GitHub repository dependency
        .package(name: "AIAgentCore", url: "https://github.com/tezpark/module-test-ios.git", from: "1.0.9")
    ],
    targets: [
        .binaryTarget(
            name: "SendbirdAIAgent",
            url: "https://github.com/tezpark/sub-module-test-ios/raw/netflix/1.0.0/Frameworks/SendbirdAIAgent.xcframework.zip",
            checksum: "063642a8c4389d1d071ef4a84e4ee8dd739d991dc6a6a8d2412fee4de4a7d4d4"
        )
    ]
)
