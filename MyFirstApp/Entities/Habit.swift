//
//  Habit.swift
//  MyFirstApp
//
//  Created by Lola Garavagno on 26/08/2021.
//

import Foundation

class Habit: Identifiable,ObservableObject {
    let id = UUID().uuidString
    @Published var imageURL: URL?
    @Published var name: String
    @Published var totalTime:Int
    @Published var isFavourite: Bool
    @Published var description:String
    @Published var timeSlots:[SpentTime]
    
    init(imageURL: URL?, name: String, totalTime: Int, isFavourite: Bool, description: String) {
        self.imageURL = imageURL
        self.name = name
        self.totalTime = totalTime
        self.isFavourite = isFavourite
        self.description = description
        self.timeSlots = []
    }
    
    init(config: NewHabitConfig) {
        self.imageURL = config.imageURL
        self.name = config.name
        self.totalTime = 0
        self.isFavourite = false
        self.description = config.description
        self.timeSlots = []
    }
        
}

