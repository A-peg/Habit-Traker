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
}
