//
//  ProductDetailScreen.swift
//  CheffDelivery
//
//  Created by Rafael Seron on 03/05/24.
//

import SwiftUI

struct ProductDetailScreen: View {
    let shopItem: Loja
    var body: some View {
        Text(shopItem.label)
    }
}

#Preview {
    ProductDetailScreen(shopItem: Loja(id: 1, label: "Açaí Panda", image: "acai-panda-logo"))
}
