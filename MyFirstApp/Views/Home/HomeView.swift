//
//  HomeView.swift
//  MyFirstApp
//
//  Created by Lola Garavagno on 05/08/2021.
//

import SwiftUI

struct HomeView: View {
    
    @State private var isShowingHabitCreation = false
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom)) {
            
        
            NavigationView{
                ScrollView {
                    VStack{
                    ForEach(testHabits) { habit in
                        ZStack{
                            RoundedRectangle(cornerRadius: 16,style: .continuous)
                                .fill(Color.white)
                                .shadow(color: Color(Color.RGBColorSpace.sRGB, white: 0, opacity: 0.2), radius: 4)
                            HabitCellView(habit: habit)
                        }
                    }
                    }.padding(.horizontal, 16)
                }.navigationTitle(Text("Mes habitudes"))
            }
            PlusButtonView(action: {
                isShowingHabitCreation.toggle()
            }).sheet(isPresented: $isShowingHabitCreation, content: {
              HabitCreationView()
            })
                .padding()
        }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
