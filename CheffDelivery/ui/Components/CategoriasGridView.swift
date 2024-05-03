//
//  CategoriasGridView.swift
//  CheffDelivery
//
//  Created by Rafael Seron on 24/04/24.
//

import SwiftUI

struct CategoriasGridView: View {
    let categoriaList: [Categoria]
    
    var body: some View {
        LazyHGrid(rows: [GridItem(.flexible()),
                         GridItem(.flexible())
                        ], spacing: 20) {
            
            ForEach(categoriaList){ item in
                CategoriaCardView(categoria: item)
            }
            
        }.frame(width: 100, height: 220)
            .padding(.horizontal, 15)
            .padding(.top, 15)
    }
}
 
#Preview {
    CategoriasGridView(categoriaList: listaCategorias)
}
