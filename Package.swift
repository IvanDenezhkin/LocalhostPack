// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "LocalhostPack",
    platforms: [
        .iOS(.v13),
        .macOS(.v11),
        .tvOS(.v13)
    ],
    products: [
        .library(
            name: "LocalhostPack",
            targets: ["LocalhostPack"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/NikSativa/NQueue.git", from: "1.2.3"),
        .package(url: "https://github.com/IvanDenezhkin/Criollo.git", branch: "master")
    ],
    targets: [
        .target(
            name: "LocalhostPack",
            dependencies: ["Criollo", "NQueue"],
            path: "Sources",
            publicHeadersPath: "LocalhostPack/"
        )
    ]
)
