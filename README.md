# _InternalSwiftSyntaxParser

Precompiled versions of **_InternalSwiftSyntaxParser** for macOS and iOS packaged into an XCFramework bundle.

Built following instructions defined in the [SwiftSyntax](https://github.com/apple/swift-syntax#embedding-swiftsyntax-in-an-application) repo.

_InternalSwiftSyntaxParser Release Tag|[SwiftSyntax](https://github.com/apple/swift-syntax) Release Tag|[Swift](https://github.com/apple/swift) Release Tag
---|---|---
`swift-5.5-RELEASE`|`0.50500.0`|`swift-5.5-RELEASE`

# Usage

```swift
// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "MyPackage",
    products: [
        .library(name: "MyLibrary", targets: ["MyLibrary"]),
    ],
    dependencies: [
        .package(name: "_InternalSwiftSyntaxParser", url: "https://github.com/liamnichols/_InternalSwiftSyntaxParser.git", .exact("swift-5.5-RELEASE")),
        .package(name: "SwiftSyntax", url: "https://github.com/apple/swift-syntax.git", .exact("0.50500.0"))
    ],
    targets: [
        .target(name: "MyLibrary", dependencies: [
            "_InternalSwiftSyntaxParser",
            "SwiftSyntax"
        ])
    ]
)
```
