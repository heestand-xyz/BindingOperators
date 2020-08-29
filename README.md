# Binding Operators

User math operators with bindings and constants.

~~~~swift
@State var value: CGFloat = 0.0
let binding: Binding<CGFloat> = $value * 2.0
~~~~

## Add to App

- *File* / *Swift Packages* / *Add Package Dependecy*
- Search for **BindingOperators** by **hexagons**
- Add *Up to Next Major* from **1.0.0**

## Example

![](https://github.com/hexagons/BindingOperators/blob/main/Assets/BindingOperators.gif?raw=true)

~~~~swift
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
~~~~

## Add to Package

~~~~swift
.package(url: "https://github.com/hexagons/BindingOperators.git", from: "1.0.0")
~~~~
