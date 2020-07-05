// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "pokemon-ss-autocontroller-mac-cli",
    dependencies: [
        .package(url: "https://github.com/jakeheis/SwiftCLI", from: "6.0.0")
    ],
    targets: [
        .target(
            name: "pssamcKit",
            dependencies: ["SwiftCLI"]),
        .target(
            name: "pokemon-ss-autocontroller-mac-cli",
            dependencies: ["pssamcKit"]),
        .testTarget(
            name: "pokemon-ss-autocontroller-mac-cliTests",
            dependencies: ["pokemon-ss-autocontroller-mac-cli"]),
    ]
)
