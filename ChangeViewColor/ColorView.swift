//
//  ColorView.swift
//  ChangeViewColor
//
//  Created by Nikita Batrakov on 24.01.2022.
//

import SwiftUI

struct ColorView: View {
    let redColor: Double
    let greenColor: Double
    let blueColor: Double
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .frame(height: 150)
            .foregroundColor(
                Color(red: redColor,
                      green: greenColor,
                      blue: blueColor)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(.white, lineWidth: 5)
            )
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(redColor: 255, greenColor: 0, blueColor: 0)
    }
}
