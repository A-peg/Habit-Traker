//
//  MyFirstAppApp.swift
//  MyFirstApp
//
//  Created by Lola Garavagno on 05/08/2021.
//

import SwiftUI

@main
struct MyFirstAppApp: App {
    
    @StateObject  var habitLibrary = HabitLibrary()
    
    var body: some Scene {
        WindowGroup {
            HomeView(habitLibrary: habitLibrary)
        }
    }
}
