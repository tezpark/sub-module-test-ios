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
        .package(name: "AIAgent", url: "https://github.com/tezpark/module-test-ios.git", from: "1.0.9")
    ],
    targets: [
        .binaryTarget(
            name: "SendbirdAIAgent",
            url: "https://github.com/tezpark/sub-module-test-ios/raw/netflix/1.0.0/Frameworks/SendbirdAIAgent.xcframework.zip",
            checksum: "e59331148196e4410e08ac7fbe5d5ceb539a57b408b6508205d200f34d8e3481"
        )
    ]
)
