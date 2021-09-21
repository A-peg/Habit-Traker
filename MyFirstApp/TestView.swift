//
//  TestView.swift
//  MyFirstApp
//
//  Created by Lola Garavagno on 08/08/2021.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        List {
            Text("Lola")
            Text("Alex")
            Text("Fredo")
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
