// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "BindingOperators",
    platforms: [
        .iOS(.v13),
        .tvOS(.v13),
        .watchOS(.v6),
        .macOS(.v10_15),
    ],
    products: [
        .library(
            name: "BindingOperators",
            targets: ["BindingOperators"]),
    ],
    targets: [
        .target(
            name: "BindingOperators",
            dependencies: []),
        .testTarget(
            name: "BindingOperatorsTests",
            dependencies: ["BindingOperators"]),
    ]
)
