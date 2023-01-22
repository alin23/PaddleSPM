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
            checksum: "cdb3662cfa999b8d08e0f4ecde97db73cb3eeae42a0fc681c711403680393e3b"
        ),
    ]
)
