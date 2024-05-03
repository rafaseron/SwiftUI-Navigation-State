//
//  CategoriaCardView.swift
//  CheffDelivery
//
//  Created by Rafael Seron on 25/04/24.
//

import SwiftUI

struct CategoriaCardView: View {
    let categoria: Categoria
    
    var body: some View {
        VStack(spacing: 5){
            Image(categoria.image)
                .scaledToFit()
                .cornerRadius(3.0)
                .fixedSize(horizontal: true, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            Text(categoria.label)
                .font(.system(size: 10))
        }
        .frame(width: 70, height: 100)
    }
}

#Preview {
    CategoriaCardView(categoria: Categoria(id: 1, label: "Restaurantes", image: "hamburguer"))
}
