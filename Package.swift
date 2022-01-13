// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BaboDomainsResolution",
    platforms: [.macOS(.v10_15), .iOS(.v11) ],
    products: [
        .library(
            name: "BaboDomainsResolution",
            type: nil,
            targets: ["BaboDomainsResolution"])
    ],
    dependencies: [
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", .upToNextMajor(from: "1.0.0")),
        .package(url: "https://github.com/attaswift/BigInt.git", from: "5.0.0")
    ],
    targets: [
        .target(
            name: "BaboDomainsResolution",
            dependencies: ["CryptoSwift", "BigInt"],
            resources: [
                .process("Resources/UNS/resolver-keys.json"),
                .process("Resources/UNS/unsProxyReader.json"),
                .process("Resources/UNS/unsRegistry.json"),
                .process("Resources/UNS/cnsRegistry.json"),
                .process("Resources/UNS/unsResolver.json"),
                .process("Resources/UNS/uns-config.json"),
                .process("Resources/ENS/ensRegistry.json"),
                .process("Resources/ENS/ensResolver.json")
            ],
            swiftSettings: [.define("INSIDE_PM")]
        ),
        .testTarget(
            name: "ResolutionTests",
            dependencies: ["BaboDomainsResolution"],
            exclude: ["Info.plist"],
            swiftSettings: [.define("INSIDE_PM")]
        )
    ]
)
