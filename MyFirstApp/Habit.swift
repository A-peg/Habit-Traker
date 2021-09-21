//
//  Habit.swift
//  MyFirstApp
//
//  Created by Lola Garavagno on 26/08/2021.
//

import Foundation

struct Habit: Identifiable {
    let id = UUID().uuidString
    let imageName: String
    let name: String
    let totalTime:Int
    let isFavourite: Bool
}
