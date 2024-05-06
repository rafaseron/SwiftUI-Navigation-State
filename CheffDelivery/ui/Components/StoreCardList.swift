//
//  ListCardItem.swift
//  CheffDelivery
//
//  Created by Rafael Seron on 27/04/24.
//

import SwiftUI

struct StoreCardItem: View {
    let shopItem: Loja
    
    var body: some View {
        HStack(spacing: 15){
            Image(shopItem.logoImage)
            Text(shopItem.label)
        }
    }
}

struct StoresList: View{
    let shopsList: [Loja]
    
    var body: some View{
        LazyVStack(alignment: .leading, spacing: 10){
            Text("Lojas")
                .font(.headline)
            
            ForEach(shopsList){ loja in
                NavigationLink {
                    ProductDetailScreen(shopItem: loja)
                } label: {
                    StoreCardItem(shopItem: loja)
                }
            }
        }.padding(.horizontal, 40)
            .foregroundStyle(.black)
        
    }
}


#Preview {
    //ListCardItem(shopItem: Loja(id: 1, label: "Acai Panda", image: "acai-panda-logo"))
    StoresList(shopsList: listaDeLojas)
}
