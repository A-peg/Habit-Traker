//
//  HabitDetailView.swift
//  MyFirstApp
//
//  Created by Lola Garavagno on 05/09/2022.
//

import SwiftUI

struct HabitDetailView: View {
    
    @ObservedObject var habit : Habit
    
    @State private var selectedDate = Date ()
    @State private var selectedTime = 30
    var body: some View {
        ScrollView{
            VStack {
                HabitHeaderView(habit: habit)
                HabitDescriptionView(description: habit.description, minutes: habit.totalTime)
                    .padding()
                TimeConfigurationView(selectedMinutes:  $selectedTime, selectedDate: $selectedDate)
                    .padding()
                StandardButtomView(color: .blue, action: {}, title: "Ajouter du temps")
                    .padding()
                ForEach(habit.timeSlots){ time in
                    TimeCellView(spentTime: time)
                        .padding()
                Rectangle()
                        .foregroundColor(.gray)
                        .frame(height: 0.5)
                
                }
            }
        }
    }
}

struct HabitDetailView_Previews: PreviewProvider {
    
    static let habit = HabitLibrary().testHabits[1]
    static var previews: some View {
        HabitDetailView(habit: habit)
    }
}
