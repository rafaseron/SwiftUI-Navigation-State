//
//  ProductDetailScreen.swift
//  CheffDelivery
//
//  Created by Rafael Seron on 03/05/24.
//

import SwiftUI

struct ProductDetailScreen: View {
    let shopItem: Loja
    //let productList: [Product]
    
    
    var body: some View {
        ScrollView{
            LazyVStack(alignment: .leading, spacing: 16){
                Image(shopItem.headerImage)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 240)
                
                VStack(spacing: 8){
                    HStack(spacing: 150){
                        Text(shopItem.label)
                            .font(.title)
                            .bold()
                        
                        Image(shopItem.logoImage)
                    }.offset(x: 20)
                    
                    Spacer()
                    
                    StoreAddress(store: shopItem)
                }
                
                Spacer()
                
                Text("Produtos")
                    .font(.title2)
                    .bold()
                    .offset(x: 20)
                
                Spacer()
                
                ProductCardList(productList: productList)
                    .offset(x: 18)
            }
        }
        
    }
}

struct StoreAddress: View {
    let store: Loja
    
    var body: some View {
        HStack(spacing: 15){
            Text(store.address)
            
            //Arrumar esse ForEach que ele nao funciona usando Int para iterar
            /*
            ForEach (starsArray) { stars in
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }*/
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
                .frame(width: 8)
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
                .frame(width: 8)
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
                .frame(width: 8)
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
                .frame(width: 8)
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
                .frame(width: 8)
        }.offset(x: 15)
    }
}

#Preview {
    ProductDetailScreen(shopItem: Loja(id: 1, label: "Açaí Panda", logoImage: "acai-panda-logo", headerImage: "acai-panda-header", address: "Rua Cuiaba Dourados MS", stars: 4)/*, productList: productList*/)
}
