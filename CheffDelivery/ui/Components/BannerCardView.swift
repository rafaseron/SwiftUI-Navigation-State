//
//  BannerCardView.swift
//  CheffDelivery
//
//  Created by Rafael Seron on 26/04/24.
//

import SwiftUI

//ImageItem Model
struct ImageItem: Identifiable{
    let id: Int
    let photo: String
}

// ImageItemList
let imageList: [ImageItem] = [ImageItem(id: 1, photo: "barbecue-banner"), ImageItem(id: 2, photo: "brazilian-meal-banner"),
                              ImageItem(id: 3, photo: "pokes-banner")]


struct BannerItem: View {
    let image: ImageItem
        var body: some View {
            Image(image.photo)
                .resizable()
                .scaledToFit()
                .cornerRadius(3)
                }
    }

struct CarouselBanners: View {
    let bannerList: [ImageItem]
    
        var body: some View {
            TabView{
                ForEach(imageList){ image in
                    BannerItem(image: image)
                }
            }.frame(height: 180)
                .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

#Preview {
    CarouselBanners(bannerList: imageList)
}
