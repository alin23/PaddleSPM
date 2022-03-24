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
            checksum: "d05170e21545949c924c5d400e4ceb89c15189ba933dd79b7699da6dbd9c6a0e"
        ),
    ]
)
