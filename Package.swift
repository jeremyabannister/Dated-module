// swift-tools-version: 5.8

///
import PackageDescription

///
let package = Package(
    name: "Dated-module",
    products: [
        .library(
            name: "Dated-module",
            targets: ["Dated-module"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Dated-module",
            dependencies: []
        ),
        .testTarget(
            name: "Dated-module-tests",
            dependencies: ["Dated-module"]
        ),
    ]
)
