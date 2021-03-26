//
//  Lamp.swift
//  TrafficLight
//
//  Created by Terechshenkov Andrey on 26.03.2021.
//

import SwiftUI

struct Lamp: View {
    let color: Color
    var lightOn: Bool = false
    
    private var lightColor: Color {
        lightOn ? color : color.opacity(0.5)
    }
    
    var body: some View {
        Circle()
            .frame(width: 120, height: 120)
            .foregroundColor(lightColor)
            .overlay(Circle().stroke(Color.white, lineWidth: 4.0))
            .padding(8)
    }
}

struct Lamp_Previews: PreviewProvider {
    static var previews: some View {
        Lamp(color: Color.red)
    }
}
