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
            checksum: "1cc8ec8af0e446786d6c8c5fae4ae9225419e64a675b7a3393907220774ed4ac"
        ),
    ]
)
