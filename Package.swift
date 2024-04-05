// larvivora project
// Copyright (c) 2024 <https://github.com/yretenai/Larvivora>, <https://hg.sr.ht/~chronovore/larvivora/browse>
// SPDX-License-Identifier: MPL-2.0
// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Larvivora",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .executable(
            name: "Larvivora",
            targets: ["Larvivora"]),
        .library(
            name: "LarvivoraKit",
            targets: ["LarvivoraKit"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Larvivora",
            dependencies: ["LarvivoraKit"]),
        .target(
            name: "LarvivoraKit"),
        .testTarget(
            name: "LarvivoraKitTests",
            dependencies: ["LarvivoraKit"]),
    ]
)
