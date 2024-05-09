//
//  ProductDetailScreen.swift
//  CheffDelivery
//
//  Created by Rafael Seron on 09/05/24.
//

import SwiftUI

struct ProductDetailScreen: View {
    let produto: Product
    
    var body: some View {
        
        Image(produto.image)
            .resizable()
            .scaledToFit()
            .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
            .frame(height: 280)
            .shadow(radius: 20)
        
        VStack(alignment: .leading, spacing: 8){
            Text(produto.nome)
            Text(produto.descricao)
            Text("R$ \(produto.preco.toPriceFormat())")
        }
    }
}

#Preview {
    ProductDetailScreen(produto: Product(id: 21, nome: "Açaí Pequeno", descricao: "Açaí na tigela de 300ml com granola e banana", preco: 8.99, image: "small_acai"))
}
