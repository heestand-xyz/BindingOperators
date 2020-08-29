import XCTest
@testable import BindingOperators
import SwiftUI

final class BindingOperatorsTests: XCTestCase {
    
    func testOperators() {
        
        let ten: Binding<CGFloat> = .constant(10.0)
        let two: Binding<CGFloat> = .constant(2.0)
        
        
        let addPre: Binding<CGFloat> = ten + 2.0
        XCTAssertEqual(addPre.wrappedValue, 12.0)
        
        let subPre: Binding<CGFloat> = ten - 2.0
        XCTAssertEqual(subPre.wrappedValue, 8.0)
        
        let mulPre: Binding<CGFloat> = ten * 2.0
        XCTAssertEqual(mulPre.wrappedValue, 20.0)
        
        let divPre: Binding<CGFloat> = ten / 2.0
        XCTAssertEqual(divPre.wrappedValue, 5.0)
        
        
        let addPost: Binding<CGFloat> = 10.0 + two
        XCTAssertEqual(addPost.wrappedValue, 12.0)
        
        let subPost: Binding<CGFloat> = 10.0 - two
        XCTAssertEqual(subPost.wrappedValue, 8.0)
        
        let mulPost: Binding<CGFloat> = 10.0 * two
        XCTAssertEqual(mulPost.wrappedValue, 20.0)
        
        let divPost: Binding<CGFloat> = 10.0 / two
        XCTAssertEqual(divPost.wrappedValue, 5.0)
        
    }

    static var allTests = [
        ("testOperators", testOperators),
    ]
}
