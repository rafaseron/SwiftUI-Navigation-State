//
//  ListCardItem.swift
//  CheffDelivery
//
//  Created by Rafael Seron on 27/04/24.
//

import SwiftUI

struct ListCardItem: View {
    let shopItem: Loja
    
    var body: some View {
        HStack(spacing: 15){
            Image(shopItem.image)
            Text(shopItem.label)
        }
    }
}

struct ShopsList: View{
    let shopsList: [Loja]
    
    var body: some View{
        LazyVStack(alignment: .leading, spacing: 10){
            Text("Lojas")
                .font(.headline)
            
            ForEach(shopsList){ loja in
                ListCardItem(shopItem: loja)
            }
        }.padding(.horizontal, 40)
        
    }
}


#Preview {
    //ListCardItem(shopItem: Loja(id: 1, label: "Acai Panda", image: "acai-panda-logo"))
    ShopsList(shopsList: listaDeLojas)
}
