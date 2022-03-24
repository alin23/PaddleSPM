// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Paddle",
    products: [
        .library(
            name: "Paddle",
            targets: ["Paddle"]
        ),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "Paddle",
            url: "https://files.lowtechguys.com/Paddle.xcframework.zip",
            checksum: "62d3c35e096a9411bd8f65e63b1599df5b04bbe9574c26c5e424c0b2594f0506"
        ),
    ]
)
