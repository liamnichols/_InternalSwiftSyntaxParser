// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "_InternalSwiftSyntaxParser",
    platforms: [
        .macOS(.v11),
        .iOS(.v14)
    ],
    products: [
        .library(name: "_InternalSwiftSyntaxParser", targets: ["_InternalSwiftSyntaxParser"])
    ],
    targets: [
        .binaryTarget(name: "_InternalSwiftSyntaxParser", path: "_InternalSwiftSyntaxParser.xcframework")
    ]
)
