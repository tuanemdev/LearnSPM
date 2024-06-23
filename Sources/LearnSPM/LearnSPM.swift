// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import OtherTarget

// File → New → Package → Library
public struct LearnSPM {
    public init() { }
    
    public func printDes() {
        print("Learn Swift Package Manager")
        let me = OtherTarget()
        let myName = me.makeSomethingAwesome()
        print(myName)
    }
}

/**
 Mỗi một folder trong `Sources` là một Target riêng biệt
 khi một Target này muốn dùng code của Target khác thì phải khai báo trong dependencies
 
 Tương tự, mỗi một folder trong `Tests` là một Test Target riêng biệt
 
 Package có thể chứa các file tài nguyên không phải code, các tài nguyên này cần nằm trong thư mục của Target sử dụng nó
 Best practices là tạo một subfolder Resources riêng để quản lý tài nguyên:
 + Nếu resources là: Interface Builder files (XIB, storyboards), Core Data files (xcdatamodeld), Asset catalogs, .lproj thì Xcode sẽ tự nhận dạng đó là file resources, ta không cần làm gì thêm
 + Nếu là file khác thì cần sửa file Package Manifest (ví dụ với file learn_spm.json)
 */
