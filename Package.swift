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
            checksum: "dbd0813cb01156c3690ae3bc656a457022f637a0c90226f8640821bcd963a756"
        ),
    ]
)
