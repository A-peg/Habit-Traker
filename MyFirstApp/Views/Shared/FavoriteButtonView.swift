//
//  FavoriteButtonView.swift
//  MyFirstApp
//
//  Created by Lola Garavagno on 07/08/2021.
//

import SwiftUI

struct FavoriteButtonView: View {
    
   @Binding var isLiked:Bool
    
    let onColor: Color
    let offColor: Color
    
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
    
    @State static var isLiked = true
    @State static var isNotLiked = false
    
    static var previews: some View {
        Group {
            FavoriteButtonView(isLiked: $isLiked, onColor: .red, offColor: .gray)
            FavoriteButtonView(isLiked: $isNotLiked, onColor: .red, offColor: .gray)
                
        }.previewLayout(.sizeThatFits)
    }
}
