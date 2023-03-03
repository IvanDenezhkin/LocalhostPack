// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "LocalhostPack",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_13),
        .tvOS(.v12)
    ],
    products: [
        .library(
            name: "LocalhostPack",
            targets: ["LocalhostPack"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/thecatalinstan/Criollo", branch: "master"),
    ],
    targets: [
        .target(
            name: "LocalhostPack",
            dependencies: ["Criollo"],
            path: "Sources",
            publicHeadersPath: "LocalhostPack/"
        )
    ]
)
