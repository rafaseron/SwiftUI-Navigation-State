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
                Text("R$ \(product.preco.toPriceFormat())")
                    .bold()
            }
            
            Spacer()
            
            Image(product.image)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .frame(height: 80)
                .shadow(radius: 10)
        }
        
    }
    
}

struct ProductCardList: View {
    let productList: [Product]
    @State private var productClick: Product?
    
    var body: some View {
        LazyVStack(alignment: .leading, spacing: 16){
            
            ForEach(productList){ product in
                
                Button(action: {
                    productClick = product
                }, label: {
                    ProductCardItem(product: product)
                }).foregroundStyle(.black)
                    .sheet(item: $productClick) { product in
                        ProductDetailScreen(produto: product)
                    }
                
            }
            
        }.frame(width: 360)
    }
}

#Preview {
    ProductCardList(productList: productList)
}
