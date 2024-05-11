//
//  ProductDetailScreen.swift
//  CheffDelivery
//
//  Created by Rafael Seron on 09/05/24.
//

import SwiftUI

struct ProductDetailScreen: View {
    let produto: Product
    @State var produtoQuantidade: Int = 1
    
    var body: some View {
        ScrollView{
            Image(produto.image)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                .frame(height: 280)
                .shadow(radius: 20)
            
            VStack(alignment: .leading, spacing: 8){
                Text(produto.nome)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                Text(produto.descricao)
                    .font(.body)
                Text("R$ \(produto.preco.toPriceFormat())")
                    .bold()
            }.offset(y: 20)
            
            VStack(spacing: 8){
                
                ProductQuantityComponent(produtoQuantidade: $produtoQuantidade)
                //Precisa passar usando $ porque estamos passando uma varivel de @State para um Componente que espera uma @Binding
                
                /* A variavel de @State é a fonte unica da verdade.
                 Para passar seu Valor (e atualizacoes dele) para o Componente que espera receber um @Binding, precisa passar o valor usando '$'.
                 Dessa forma, o Componente Secundário consegue 'acessar e modificar' o 'Valor' da variável original */
                
                //Text para fins didáticos. É para ver a ligacao das variaveis que foi feita através do Binding
                //Text("\(produtoQuantidade)")
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    HStack{
                        Image(systemName: "cart")
                            .foregroundStyle(.white)
                        Text("Adicionar ao carrinho")
                            .font(.title2)
                            .foregroundStyle(.white)
                    }.foregroundStyle(.colorRed)
                        .padding(.horizontal, 32)
                        .padding(.vertical, 16)
                        .background(Color("ColorRed"))
                        .clipShape(RoundedRectangle(cornerRadius: 32))
                        .shadow(color: Color("ColorRed").opacity(0.5), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 6, y:8)
                }).offset(y: 60)
                
            }.offset(y: 120)
            
        }.navigationBarBackButtonHidden()
    }
}

#Preview {
    ProductDetailScreen(produto: Product(id: 21, nome: "Açaí Pequeno", descricao: "Açaí na tigela de 300ml com granola e banana", preco: 8.99, image: "small_acai"))
}
