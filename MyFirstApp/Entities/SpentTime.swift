//
//  SpentTime.swift
//  MyFirstApp
//
//  Created by Lola Garavagno on 05/09/2022.
//

import Foundation

struct SpentTime:Identifiable {
    let id = UUID().uuidString
    let date : Date
    let minutes: Int
}
