//
//  ContentView.swift
//  ChangeViewColor
//
//  Created by Nikita Batrakov on 24.01.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var redValue = 150.0
    @State private var greenValue = 20.0
    @State private var blueValue = 80.0
    @State private var redText = "150"
    @State private var greenText = "20"
    @State private var blueText = "80"
    @FocusState private var isActive: Bool
    
    var body: some View {
        ZStack {
            Color.cyan
                .ignoresSafeArea()
            VStack(spacing: 32) {
                ColorView(redColor: redValue / 255,
                          greenColor: greenValue / 255,
                          blueColor: blueValue / 255)
                ColorSliderView(value: $redValue,
                                text: $redText,
                                color: .red)
                ColorSliderView(value: $greenValue,
                                text: $greenText,
                                color: .green)
                ColorSliderView(value: $blueValue,
                                text: $blueText,
                                color: .blue)
                Spacer()
            }
            .padding()
            .focused($isActive)
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done") {
                        isActive.toggle()
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            ContentView()
        }
    }
}
