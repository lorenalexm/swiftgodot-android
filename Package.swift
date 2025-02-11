// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AndroidDemo",
	platforms: [.macOS(.v14)],
    products: [
        .library(name: "AndroidDemo", type: .dynamic, targets: ["AndroidDemo"]),
    ],
    dependencies: [
        .package(url: "https://github.com/migueldeicaza/SwiftGodot", branch: "main")
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
