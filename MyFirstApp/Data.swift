//
//  Data.swift
//  MyFirstApp
//
//  Created by Lola Garavagno on 26/08/2021.
//

import Foundation

class HabitLibrary: ObservableObject {
    @Published  var testHabits = [
        Habit(imageURL: URL(string: "https://images.pexels.com/photos/235922/pexels-photo-235922.jpeg?auto=compress&cs=tinysrgb&w=600"), name: "Running", totalTime: 178, isFavourite: false, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
        Habit(imageURL: URL(string: "https://images.pexels.com/photos/4974915/pexels-photo-4974915.jpeg?auto=compress&cs=tinysrgb&w=600"), name: "Coding", totalTime: 734, isFavourite: true, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
        Habit(imageURL: URL(string: "https://images.pexels.com/photos/922100/pexels-photo-922100.png?auto=compress&cs=tinysrgb&w=600"), name: "Reading", totalTime: 62, isFavourite: false, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
    ]

}


let listOfURLs = [
URL(string: "https://images.pexels.com/photos/235922/pexels-photo-235922.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
URL(string: "https://images.pexels.com/photos/936094/pexels-photo-936094.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
URL(string: "https://images.pexels.com/photos/374147/pexels-photo-374147.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
URL(string: "https://images.pexels.com/photos/373941/pexels-photo-373941.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
URL(string: "https://images.pexels.com/photos/3060324/pexels-photo-3060324.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
URL(string: "https://images.pexels.com/photos/3760529/pexels-photo-3760529.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
URL(string: "https://images.pexels.com/photos/4974915/pexels-photo-4974915.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
URL(string: "https://images.pexels.com/photos/1436618/pexels-photo-1436618.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
URL(string: "https://images.pexels.com/photos/2147042/pexels-photo-2147042.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
URL(string: "https://images.pexels.com/photos/374074/pexels-photo-374074.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
URL(string: "https://images.pexels.com/photos/810775/pexels-photo-810775.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
URL(string: "https://images.pexels.com/photos/786003/pexels-photo-786003.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
URL(string: "https://images.pexels.com/photos/160107/pexels-photo-160107.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
]
