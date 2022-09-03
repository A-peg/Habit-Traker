//
//  Habit.swift
//  MyFirstApp
//
//  Created by Lola Garavagno on 26/08/2021.
//

import Foundation

struct Habit: Identifiable {
    let id = UUID().uuidString
    let imageURL: URL?
    let name: String
    let totalTime:Int
    var isFavourite: Bool
    let description:String
    
    init(imageURL: URL?, name: String, totalTime: Int, isFavourite: Bool) {
        self.imageURL = imageURL
        self.name = name
        self.totalTime = totalTime
        self.isFavourite = isFavourite
        self.description = ""
    }
    
    init(config: NewHabitConfig) {
        self.imageURL = config.imageURL
        self.name = config.name
        self.totalTime = 0
        self.isFavourite = false
        self.description = config.description
    }
        
}

