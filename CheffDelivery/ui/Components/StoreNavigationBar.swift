//
//  StoreNavigationBar.swift
//  CheffDelivery
//
//  Created by Rafael Seron on 08/05/24.
//

import SwiftUI

struct BotaoLojaNavigationBar: View {
    var body: some View {
        HStack{
            Image(systemName: "storefront")
                .foregroundStyle(.colorRed)
            Text("Lojas")
                .foregroundStyle(.colorRed)
        }
    }
}

struct StoreNavigationBar: View {
    let loja: Loja
    @Environment(\.presentationMode) var isPresented
    
    var body: some View {
        HStack{
            Button{
                isPresented.wrappedValue.dismiss()
            }label: {
                BotaoLojaNavigationBar()
                    .padding()
            }
            
            /*NavigationLink {
                //HomeScreen()
            } label: {
                BotaoLojaNavigationBar()
                    .padding()
            }*/
            
            Spacer()
            
            Text(loja.label)
                .offset(x: -50)
            
            Spacer()
        }
    }
}

#Preview {
    StoreNavigationBar(loja: Loja(id: 1, label: "Açaí Panda", logoImage: "acai-panda-logo", headerImage: "acai-panda-header", address: "Rua Principal, 123 São Paulo SP", stars: 4, products: acaiPandaProductList))
}
