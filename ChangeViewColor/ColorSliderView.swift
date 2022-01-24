//
//  ColorSliderView.swift
//  ChangeViewColor
//
//  Created by Nikita Batrakov on 24.01.2022.
//

import SwiftUI

struct ColorSliderView: View {
    @Binding var value: Double
    @Binding var text: String
    
    let color: Color
    
    var body: some View {
        let binding = Binding(
            get: { self.value },
            set: {
                self.text = String(lround($0))
                self.value = $0
            }
        )
        
        HStack {
            Text("\(lround(value))")
                .frame(width: 50)
            Slider(value: binding, in: 0...255, step: 1)
                .tint(color)
            TextField("\(lround(value))", text: $text) { _ in
                textToValue()
            }
                .multilineTextAlignment(.trailing)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
                .frame(width: 50)
        }
    }
    
    private func textToValue() {
        if let newValue = Double(text) {
            value = newValue
        }
    }
}
