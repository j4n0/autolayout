// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "autolayout",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(name: "AutoLayoutDynamic", type: .dynamic, targets: ["AutoLayout"]),
        .library(name: "AutoLayoutStatic", type: .static, targets: ["AutoLayout"])
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "AutoLayout",
            dependencies: [],
            path: "sources/main"
        ),
        .testTarget(
            name: "AutoLayoutTests",
            dependencies: ["AutoLayout"],
            path: "sources/tests"
        )
    ]
)
