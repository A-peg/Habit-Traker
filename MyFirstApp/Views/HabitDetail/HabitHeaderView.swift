//
//  HabitHeaderView.swift
//  MyFirstApp
//
//  Created by Lola Garavagno on 05/09/2022.
//

import SwiftUI
import Kingfisher

struct HabitHeaderView: View {
    
    @ObservedObject var habit : Habit 
    var body: some View {
        ZStack(alignment: .bottom){
            KFImage(habit.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .clipped()
            
            LinearGradient(
                gradient: Gradient(
                colors: [Color(white: 0, opacity: 0.5), .clear]),
                startPoint: .bottom, endPoint: .top)
            
                .frame(height: 100)
            
            HStack{
                Text(habit.name)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                Spacer()
                FavoriteButtonView(isLiked: $habit.isFavourite, onColor: .red, offColor: .white)
            }
        }
    }
}

struct HabitHeaderView_Previews: PreviewProvider {
    
    static let habit = HabitLibrary().testHabits[0]
    static var previews: some View {
        HabitHeaderView(habit: habit)
    }
}
