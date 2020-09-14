// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ToolbarSUI",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "ToolbarSUI",
            targets: ["ToolbarSUI"]),
    ],
    targets: [
        .target(
            name: "ToolbarSUI",
            dependencies: [],
            path: "Sources")
    ],
    swiftLanguageVersions: [
        .version("5.2")
    ]
)
