// swift-tools-version:5.3
//
//  Package.swift
//  WireKit
//

import PackageDescription

let package = Package(
    name: "WireKit",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13),
        .tvOS(.v13),
        .watchOS(.v5)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "WireKit",
            targets: ["WireKit"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/apple/swift-collections", from: "0.0.7"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "WireKit",
            dependencies: [.product(name: "OrderedCollections", package: "swift-collections")]),
        .testTarget(
            name: "WireKitTests",
            dependencies: ["WireKit"],
            resources: [.process("Resources")]),
            
    ]
)
