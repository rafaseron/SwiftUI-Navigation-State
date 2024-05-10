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
    @State var estrelasParaFiltrar = 0
    
    //lojasFiltradas precisa ser uma property computada por causa do Swift
    var lojasFiltradas: [Loja] {
        return shopsList.filter { Loja in
            Loja.stars >= estrelasParaFiltrar
        }
    }
    /* Para o Swift, shopsList nao foi inicializado ainda, portanto, não é acessível. Para contornar
     este problema, podemos usar uma 'variavel computada'.
     Também, atualizações de Valor de 'estrelasParaFiltrar' são computadas dentro desse escopo, não
     precisando que 'lojasFiltradas' precise da notacao @State - e o Swift não deixa também */
    
    var body: some View{
        
        LazyVStack(alignment: .leading, spacing: 10){
            HStack{
                Text("Lojas")
                    .font(.headline)
                
                Spacer()
                
                Menu {
                    
                    Button(action: {
                        estrelasParaFiltrar = 0
                    }, label: {
                        Text("Limpar filtros")
                    }).foregroundStyle(.blue)
                    
                    Divider()
                    
                    ForEach(1...5, id: \.self){ estrela in
                        Button(action: {
                            estrelasParaFiltrar = estrela
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
            
            if lojasFiltradas.isEmpty{
                VStack(alignment: .leading, spacing: 16){
                    
                    HStack{
                        Spacer()
                        
                        Image(systemName: "slash.circle")
                            .foregroundStyle(.colorRed)
                            .font(.title)
                        
                        Spacer()
                    }
                    
                    Text("Oops!")
                        .foregroundStyle(.black)
                        .bold()
                        .font(.title2)
                    
                    Text("Sem resultados para este filtro")
                    
                    HStack{
                        Spacer()
                        
                        Button(action: {
                            estrelasParaFiltrar = 0
                        }, label: {
                            Text("Limpar filtros")
                        }).foregroundStyle(.blue)
                        
                        Spacer()
                    }
                    
                }.offset(y: 50)
            }else{
                ForEach(lojasFiltradas){ loja in
                    NavigationLink {
                        StoreScreen(loja: loja)
                    } label: {
                        StoreCardItem(shopItem: loja)
                    }
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
