//
//  TestView.swift
//  
//
//  Created by Cappuccino on 2020-08-29.
//

import SwiftUI

struct CircleSliderView: View {
    @Binding var value: CGFloat
    var body: some View {
        VStack {
            Circle()
                .scale(max(value, 0.0))
            Slider(value: $value)
        }
    }
}

struct TestView: View {
    @State var value: CGFloat = 0.0
    var body: some View {
        VStack {
            CircleSliderView(value: $value * 2.0)
            CircleSliderView(value: $value + 0.5)
        }
        .padding()
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
