//
//  TestView.swift
//  MyFirstApp
//
//  Created by Lola  on 08/08/2021.
//

import SwiftUI

struct TestView: View {
    
     @State var colorIsSelected = true
    
    var body: some View {
        
        VStack{
            Text(colorIsSelected ? "la vue est selectionée": "La vue n'est pas selectionnée")
            ColorView(isSelected:$colorIsSelected)
        
        }
    }
}


struct ColorView: View {
    
    @Binding var isSelected:Bool
    
    var body: some View {
        ZStack{
            Circle()
                .foregroundColor(.red)
                .frame(width:50, height: 50)
            if isSelected {
            Circle()
                .strokeBorder(Color.gray, lineWidth: 3)
                .frame(width: 60, height: 60)
            }
        }
}
}

    struct TestView_Previews: PreviewProvider {
        
        static var previews: some View{
        TestView()
    }
    }
