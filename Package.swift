// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

// Dòng comment swift-tools-version không phải là một comment bình thường
// nó nói cho SPM version của Swift dùng để build Package
let package = Package(
    name: "LearnSPM", // Tên Package
    defaultLocalization: "en",
    platforms: [ // Nền tảng và version tối thiều hỗ trợ
        .iOS(.v16),
        .macOS(.v14)
    ],
    products: [
        // Khai báo các executables và libraries mà package cung cấp, bộc lộ chúng cho các package khác.
        .library(
            name: "LearnSPM",
            // Package có thể là Static hoặc Dynamic.
            // Mặc định Xcode sẽ tự động lựa chọn link Package dưới dạng Static hoặc Dynamic. (thực tế là Xcode luôn link Package dưới dạng Static)
            type: .static,
            targets: ["LearnSPM", "LearnFramework", "LearnStaticLibrary"]
        ),
    ],
    dependencies: [ // Khai báo các package khác mà Package này phụ thuộc vào
        // Ví dụ với OpenCombine (do chỉ khai báo làm ví dụ nên comment để loại bỏ)
        // .package(url: "https://github.com/OpenCombine/OpenCombine.git", from: "0.14.0")
    ],
    targets: [
        // Targets là các building blocks cơ bản của Package, định nghĩa một module hoặc một bộ thử nghiệm.
        // Targets có thể phụ thuộc vào các target khác trong package và các product được cung cấp từ dependencies.
        .target(
            name: "LearnSPM",
            dependencies: ["OtherTarget"/*, "OpenCombine"*/],
            exclude: ["Resources/TODO.md"], // Không được coi là resources và không copy đến package bundle
            resources: [
                .process("Resources/learn_spm.json"), // Thực hiện copy đến top-level (không giữ cấu trúc nếu là thư mục) và xử lý để tối ưu cho các platforms hỗ trợ (ví dụ như nén ảnh)
                .copy("Resources/HTML") // Thực hiện copy đến top-level (giữ nguyên cấu trúc thư mục) và không xử lý gì
            ]
        ),
        .target(
            name: "OtherTarget"
        ),
        // Phân phối binary framework thông qua SPM
        // Có 2 cách:
        // + nhúng trực tiếp và cung cấp path
        // + cung cấp URL tới file .zip và mã checksum để kiểm tra tính toàn vẹn
        .binaryTarget(
            name: "LearnFramework",
            path: "./Sources/LearnFramework.xcframework"
        ),
        .binaryTarget(
            name: "LearnStaticLibrary",
            path: "./Sources/LearnStaticLibrary.xcframework"
        ),
        .testTarget(
            name: "LearnSPMTests",
            dependencies: ["LearnSPM"]
        ),
    ]
)
