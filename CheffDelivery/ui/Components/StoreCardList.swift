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
            HStack{
                Text("Lojas")
                    .font(.headline)
                
                Spacer()
                
                Menu {
                    ForEach(1...5, id: \.self){ estrela in
                        Button(action: {
                            //action code
                        }, label: {
                            if estrela>1 {
                                Text(" A partir de \(estrela) estrelas")
                            } else {
                                Text(" A partir de \(estrela) estrela")
                            }
                        })
                    }
                    
                } label: {
                    Text("Filtrar")
                }

                
            }
            
            ForEach(shopsList){ loja in
                NavigationLink {
                    StoreScreen(loja: loja)
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
