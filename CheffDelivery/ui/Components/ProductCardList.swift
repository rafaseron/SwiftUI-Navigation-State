//
//  ProductCardList.swift
//  CheffDelivery
//
//  Created by Rafael Seron on 06/05/24.
//

import SwiftUI

struct ProductCardItem: View{
    let product: Product
    
    var body: some View{
        
        HStack(spacing: 20){
            VStack(alignment: .leading){
                Text(product.nome)
                    .bold()
                    .font(.title3)
                Text(product.descricao)
                    .font(.body)
                Text(product.preco)
                    .bold()
            }
            
            Spacer()
            
            Image(product.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
                .frame(height: 80)
        }
        
    }
    
}

struct ProductCardList: View {
    let productList: [Product]
    
    var body: some View {
        LazyVStack(alignment: .leading, spacing: 16){
            
            ForEach(productList){ product in
                ProductCardItem(product: product)
            }
            
        }.frame(width: 360)
    }
}

#Preview {
    ProductCardList(productList: productList)
}
