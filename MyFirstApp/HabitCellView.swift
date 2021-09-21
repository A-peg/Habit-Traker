//
//  HabitCellView.swift
//  MyFirstApp
//
//  Created by Lola Garavagno on 26/08/2021.
//

import SwiftUI

struct HabitCellView: View {
    
    let habit: Habit
    
    var body: some View {
        HStack {
            Image(habit.imageName)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 80, height: 80)
                .clipped()
                .cornerRadius(10)
                .padding(.trailing,8)
            VStack(alignment:.leading ) {
            
            
                Text(habit.name)
                    .font(.system(.title2))
                    .fontWeight(.semibold)
                Text("Total : \(habit.totalTime) minutes")
            }
            Spacer()
           FavoriteButtonView()
        }.padding()
    }
}

struct HabitCellView_Previews: PreviewProvider {
    static var previews: some View {
        HabitCellView(habit:testHabits[0])
            .previewLayout(.sizeThatFits)
    }
}
