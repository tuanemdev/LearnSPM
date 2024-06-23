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
            
            Button("JSON Decode") {
                // Khi sử dụng resource trong Package thì phải dùng Bundle.module
                // Bởi vì mỗi subfolder trong Sources là một module riêng biệt
                let product = Bundle.module.decode(Product.self, from: "learn_spm.json")
                print(product.fruit)
            }
        }
    }
}

#Preview {
    LearnSPMView()
}
