// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "VaporPlotUI",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "VaporPlotUI", targets: ["VaporPlotUI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0"),
        .package(url: "https://github.com/johnsundell/plot.git", from: "0.11.0"),
    ],
    targets: [
        .target(name: "VaporPlotUI", dependencies: [
            .product(name: "Vapor", package: "vapor"),
            .product(name: "Plot", package: "plot"),
        ]),
    ]
)
