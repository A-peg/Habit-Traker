//
//  HabitCellView.swift
//  MyFirstApp
//
//  Created by Lola Garavagno on 26/08/2021.
//

import SwiftUI
import Kingfisher

struct HabitCellView: View {
    
     @State var habit: Habit
    
    var body: some View {
        HStack {
            KFImage(habit.imageURL)
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
            FavoriteButtonView(isLiked: $habit.isFavourite, onColor: .red, offColor: .gray)
        }.padding()
    }
}

struct HabitCellView_Previews: PreviewProvider {
    
     private static let testHabit = Habit(imageURL: URL(string: "https://images.pexels.com/photos/235922/pexels-photo-235922.jpeg?auto=compress&cs=tinysrgb&w=600"),
    name: "Running",
    totalTime: 178,
    isFavourite: false,
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
    
    static var previews: some View {
        HabitCellView(habit:testHabit)
            .previewLayout(.sizeThatFits)
    }
}
