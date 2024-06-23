//
//  SwiftUIView.swift
//  
//
//  Created by Nguyen Tuan Anh on 23/6/24.
//

import SwiftUI

public struct LearnSPMView: View {
    public init() { }
    
    let buttonTitle = String(localized: "JSON Decode", bundle: .module)
    
    public var body: some View {
        VStack {
            Text("Learn Swift Package Manager!", bundle: .module)
            
            Image(.cactus)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200)
            
            Button(buttonTitle) {
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
        .environment(\.locale, .init(identifier: "vi"))
}
