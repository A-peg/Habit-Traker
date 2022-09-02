//
//  HabitCreationView.swift
//  MyFirstApp
//
//  Created by Lola Garavagno on 02/09/2022.
//

import SwiftUI

struct HabitCreationView: View {
    
    @State var habitName: String = ""
    @State var habitDescription: String = ""
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack {
                    TextField("Habit name", text:$habitName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextEditor(text: $habitDescription)
                        .border(Color.gray, width: 1)
                        .frame(height:150)
                }.padding()
            }.navigationTitle("Nouvelles habitudes")
                .navigationBarItems(trailing: Button(action:{
                    print(habitName)
                },label:{
                    Text("Validez")
                }))
        }
}
}

struct HabitCreationView_Previews: PreviewProvider {
    static var previews: some View {
        HabitCreationView()
    }
}
