//
//  HabitDescriptionView.swift
//  MyFirstApp
//
//  Created by Lola Garavagno on 05/09/2022.
//

import SwiftUI

struct HabitDescriptionView: View {
    
    let description : String?
    let minutes : Int
    var body: some View {
        HStack{
            VStack(alignment: .leading,spacing: 8){
                if let description = description {
                    Text(description)
                }
                
                Text("Temps total: \(minutes) min")
                    .fontWeight(.semibold)
                
            }.foregroundColor(.secondary)
            Spacer()
        }
    }
}

struct HabitDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        HabitDescriptionView(description: "Ceci est une description de mon habitude", minutes: 50)
    }
}
