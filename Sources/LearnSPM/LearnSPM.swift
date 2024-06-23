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
