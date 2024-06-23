// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import OtherTarget

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
 */
