//
//  ProductDetailScreen.swift
//  CheffDelivery
//
//  Created by Rafael Seron on 03/05/24.
//

import SwiftUI

struct StoreScreen: View {
    let loja: Loja
    
    
    var body: some View {
        
        VStack{
            StoreNavigationBar(loja: loja)
            
            ScrollView(showsIndicators: false){
                LazyVStack(alignment: .leading, spacing: 16){
                    Image(loja.headerImage)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 220)
                        .cornerRadius(20)
                        .padding(.horizontal)
                    
                    VStack(spacing: 8){
                        HStack(spacing: 150){
                            Text(loja.label)
                                .font(.title)
                                .bold()
                            
                            Image(loja.logoImage)
                        }.offset(x: 20)
                        
                        Spacer()
                        
                        StoreAddress(store: loja)
                    }
                    
                    Spacer()
                    
                    Text("Produtos")
                        .font(.title2)
                        .bold()
                        .offset(x: 20)
                    
                    Spacer()
                    
                    ProductCardList(productList: loja.products)
                        .offset(x: 18)
                }
            }
            
        }.navigationBarBackButtonHidden()
        
    }
}

struct StoreAddress: View {
    let store: Loja
    
    var body: some View {
        HStack(spacing: 15){
            Text(store.address)
            
            ForEach(1...store.stars, id: \.self){ star in
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                    .frame(width: 8)
            }
            
        }.offset(x: 15)
    }
}

#Preview {
    StoreScreen(loja: Loja(id: 1, label: "Açaí Panda", logoImage: "acai-panda-logo", headerImage: "acai-panda-header", address: "Rua Principal, 123 São Paulo SP", stars: 4, products: acaiPandaProductList))
}
