//
//  File.swift
//  
//
//  Created by Nguyen Tuan Anh on 23/6/24.
//

import Foundation

// package access level nhằm mục đích bộ lộ nó với một Target (module) khác nằm trong Package
// nhưng không bộc lộ nó ra bên ngoài Package
package struct OtherTarget {
    package init() { }
    
    package func makeSomethingAwesome() -> String {
        return "Tuan Em"
    }
}
