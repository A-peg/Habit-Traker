//
//  StandardButtomView.swift
//  MyFirstApp
//
//  Created by Lola Garavagno on 05/09/2022.
//

import SwiftUI

struct StandardButtomView: View {
    
    let color: Color
    let action: () -> Void
    let title : String
    
    var body: some View {
        Button(action: action,
               label: {
            HStack{
                Spacer()
                Text(title)
                    .fontWeight(.semibold)
                    .padding()
                    .foregroundColor(.white)
                    
                Spacer()
            }
        })
            .background(color)
            .cornerRadius(10)
            .shadow(radius: 5)
    }
}

struct StandardButtomView_Previews: PreviewProvider {
    static var previews: some View {
        StandardButtomView(color: .blue, action: {}, title: "Test Button")
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
