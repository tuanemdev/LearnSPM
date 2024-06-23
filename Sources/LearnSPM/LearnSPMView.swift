//
//  SwiftUIView.swift
//  
//
//  Created by Nguyen Tuan Anh on 23/6/24.
//

import SwiftUI

public struct LearnSPMView: View {
    public init() { }
    
    public var body: some View {
        VStack {
            Text("Learn Swift Package Manager!")
            
            Image(.cactus)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200)
        }
    }
}

#Preview {
    LearnSPMView()
}
