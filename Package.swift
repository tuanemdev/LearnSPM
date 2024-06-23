// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LearnSPM", // Tên Package
    platforms: [ // Nền tảng và version tối thiều hỗ trợ
        .iOS(.v16),
        .macOS(.v14)
    ],
    products: [
        // Khai báo các executables và libraries mà package cung cấp, bộc lộ chúng cho các package khác.
        .library(
            name: "LearnSPM",
            targets: ["LearnSPM"]
        ),
    ],
    dependencies: [ // Khai báo các package khác mà Package này phụ thuộc vào
        .package(url: "https://github.com/OpenCombine/OpenCombine.git", from: "0.14.0")
    ],
    targets: [
        // Targets là các building blocks cơ bản của Package, định nghĩa một module hoặc một bộ thử nghiệm.
        // Targets có thể phụ thuộc vào các target khác trong package và các product được cung cấp từ dependencies.
        .target(
            name: "LearnSPM",
            dependencies: ["OtherTarget", "OpenCombine"],
            resources: [.process("Resources/learn_spm.json")]
        ),
        .target(
            name: "OtherTarget"
        ),
        .testTarget(
            name: "LearnSPMTests",
            dependencies: ["LearnSPM"]
        ),
    ]
)
