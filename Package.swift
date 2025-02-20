// swift-tools-version: 6.0.3
import PackageDescription

let package = Package(
	name: "AndroidDemo",
	platforms: [.macOS(.v14)],
	products: [
		.library(name: "AndroidDemo", type: .dynamic, targets: ["AndroidDemo"]),
	],
	dependencies: [
		.package(url: "https://github.com/marcprux/SwiftGodot", branch: "main")
	],
	targets: [
		.target(
			name: "AndroidDemo",
			dependencies: ["SwiftGodot"],
			plugins: [
				.plugin(name: "EntryPointGeneratorPlugin", package: "SwiftGodot")
            ]
		)
	]
)
