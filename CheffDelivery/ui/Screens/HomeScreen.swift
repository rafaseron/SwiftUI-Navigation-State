//
//  ContentView.swift
//  CheffDelivery
//
//  Created by Rafael Seron on 23/04/24.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack(spacing: 30) {
            NavigationBar()
                .padding(.horizontal, 15)
            
            ScrollView(.vertical, showsIndicators: false){
                LazyVStack(spacing: 20){
                    CategoriasGridView(categoriaList: listaCategorias)
                        .padding(.top, 50)
                    CarouselBanners(bannerList: imageList)
                    
                    ShopsList(shopsList: listaDeLojas)
                    
                }.offset(y: -70)
                //.frame(height: 350)
            }
            
        }
    }
}

#Preview {
    HomeScreen()
}
