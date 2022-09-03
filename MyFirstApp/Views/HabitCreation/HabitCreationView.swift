//
//  HabitCreationView.swift
//  MyFirstApp
//
//  Created by Lola Garavagno on 02/09/2022.
//

import SwiftUI

struct HabitCreationView: View {
    
    @ObservedObject var habitLibrary:HabitLibrary
     @State var habitConfig = NewHabitConfig()
     @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView{
            ScrollView{
                VStack {
                    TextField("Habit name", text:$habitConfig.name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextEditor(text: $habitConfig.description)
                        .border(Color.gray, width: 1)
                        .frame(height:150)
                }.padding()
                CoverSelectionView(selectedURL: $habitConfig.imageURL)
            }.navigationTitle("Nouvelles habitudes")
                .navigationBarItems(trailing: Button(action:{
                    let newHabit = Habit(config: habitConfig)
                    habitLibrary.testHabits.append(newHabit)
                    presentationMode.wrappedValue.dismiss()
                },label:{
                    Text("Validez")
                }))
        }
}
}

struct HabitCreationView_Previews: PreviewProvider {
    
    @StateObject static var habitLibrary = HabitLibrary()
    static var previews: some View {
        HabitCreationView(habitLibrary: habitLibrary)
    }
}
