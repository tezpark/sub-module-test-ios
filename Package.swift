// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AIAgent",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "AIAgentCore", targets: ["AIAgentCore"]),
        .library(name: "MainModule", targets: ["MainModule"])
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "AIAgentCore",
            url: "https://github.com/tezpark/module-test-ios/releases/download/1.0.8/AIAgentCore.xcframework.zip",
            checksum: "90ac08eb829dcb25b459f4e0a49bb4164a2eeb13ae096fc872d1edd437d79fe7"
        ),
        .target(
            name: "MainModule",
            dependencies: ["AIAgentCore"],
            path: "./MainModule/Sources"
        )
    ]
)
