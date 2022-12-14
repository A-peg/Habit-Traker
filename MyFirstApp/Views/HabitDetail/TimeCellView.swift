//
//  TimeCellView.swift
//  MyFirstApp
//
//  Created by Lola Garavagno on 05/09/2022.
//

import SwiftUI

struct TimeCellView: View {
    
    let spentTime: SpentTime
    var body: some View {
        HStack{
            Text("\(spentTime.minutes) min")
                .fontWeight(.semibold)
            Spacer()
            Text(stringDate(date:spentTime.date))
        }
    }
    private func stringDate(date: Date ) -> String{
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMM yyyy"
        return formatter.string(from: date)
    }
}

struct TimeCellView_Previews: PreviewProvider {
    
    static let time = SpentTime(date: Date(), minutes: 55)
    static var previews: some View {
        TimeCellView(spentTime: time)
    }
}
