//
//  FavoriteButtonView.swift
//  MyFirstApp
//
//  Created by Lola Garavagno on 07/08/2021.
//

import SwiftUI

struct FavoriteButtonView: View {
    
   @State var isLiked:Bool = false
    
    var body: some View {
        Button(action: {
            isLiked.toggle()
        }, label: {
            Image(systemName: isLiked ? "heart.fill" : "heart")
                .font(.system(size: 24))
                .padding(10)
                .foregroundColor(isLiked ? .red : .gray)
        })
        
    }
}

struct FavoriteButtonView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FavoriteButtonView(isLiked: true)
            FavoriteButtonView(isLiked: false)
                
        }.previewLayout(.sizeThatFits)
    }
}
