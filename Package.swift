// swift-tools-version: 5.10

// larvivora project
// Copyright (c) 2024 <https://github.com/yretenai/Larvivora>, <https://hg.sr.ht/~chronovore/larvivora/browse>
// SPDX-License-Identifier: MPL-2.0

import PackageDescription

let package = Package(
	name: "Larvivora",
	products: [
		.executable(
			name: "Larvivora",
			targets: ["Larvivora"]),
		.library(
			name: "LarvivoraKit",
			targets: ["LarvivoraKit"]),
	],
	targets: [
		.executableTarget(
			name: "Larvivora",
			dependencies: ["LarvivoraKit"]),
		.target(
			name: "LarvivoraKit"),
		.testTarget(
			name: "LarvivoraKitTests",
			dependencies: ["LarvivoraKit"]),
	]
)
