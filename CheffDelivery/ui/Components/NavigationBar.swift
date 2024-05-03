//
//  NavigationBar.swift
//  CheffDelivery
//
//  Created by Rafael Seron on 23/04/24.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        HStack{
            
            Spacer()
            Button(action: {}, label:{
                Text("R. Vergueiros, 3185")
            })
            .font(.headline)
            .fontWeight(.semibold)
            .foregroundStyle(.black)
            Spacer()
            
            Button(action: {}, label:{
                Image(systemName: "bell.badge")
            })
            .font(.title3)
            .foregroundStyle(.red)
        }
    }
}

#Preview {
    NavigationBar()
}
