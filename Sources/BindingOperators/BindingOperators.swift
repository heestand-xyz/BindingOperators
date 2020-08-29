import SwiftUI

public extension Binding where Value: FloatingPoint {
    
    static func + (lhs: Binding<Value>, rhs: Value) -> Binding<Value> {
        Binding<Value> {
            lhs.wrappedValue + rhs
        } set: { value in
            lhs.wrappedValue = value - rhs
        }
    }
    static func + (lhs: Value, rhs: Binding<Value>) -> Binding<Value> {
        Binding<Value> {
            lhs + rhs.wrappedValue
        } set: { value in
            rhs.wrappedValue = value - lhs
        }
    }
    
    static func - (lhs: Binding<Value>, rhs: Value) -> Binding<Value> {
        Binding<Value> {
            lhs.wrappedValue - rhs
        } set: { value in
            lhs.wrappedValue = value + rhs
        }
    }
    static func - (lhs: Value, rhs: Binding<Value>) -> Binding<Value> {
        Binding<Value> {
            lhs - rhs.wrappedValue
        } set: { value in
            rhs.wrappedValue = -(value - lhs)
        }
    }
    
    static func * (lhs: Binding<Value>, rhs: Value) -> Binding<Value> {
        Binding<Value> {
            lhs.wrappedValue * rhs
        } set: { value in
            lhs.wrappedValue = value / rhs
        }
    }
    static func * (lhs: Value, rhs: Binding<Value>) -> Binding<Value> {
        Binding<Value> {
            lhs * rhs.wrappedValue
        } set: { value in
            rhs.wrappedValue = value / lhs
        }
    }
    
    static func / (lhs: Binding<Value>, rhs: Value) -> Binding<Value> {
        Binding<Value> {
            lhs.wrappedValue / rhs
        } set: { value in
            lhs.wrappedValue = value * rhs
        }
    }
    static func / (lhs: Value, rhs: Binding<Value>) -> Binding<Value> {
        Binding<Value> {
            lhs / rhs.wrappedValue
        } set: { value in
            rhs.wrappedValue = lhs / value
        }
    }
    
}
