//
//  Float16Test.swift
//
//  The MIT License
//  Copyright (c) 2015 - 2022 Susan Cheng. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Float16
import XCTest

class Float16Test: XCTestCase {
    
    func testFloat16Layout() {
        
        XCTAssertEqual(MemoryLayout<float16>.size, 2)
        XCTAssertEqual(MemoryLayout<float16>.stride, 2)
        XCTAssertEqual(MemoryLayout<float16>.alignment, 2)
    }
    
    func testFloat16BitPattern() {
        
        XCTAssertEqual((0 as float16).bitPattern, 0)
        XCTAssertEqual((1.5 as float16).bitPattern, 0x3E00)
        XCTAssertEqual((-2.5 as float16).bitPattern, 0xC100)
    }
    
    func testFloat16Properties() {
        
        XCTAssertEqual(float16.ulpOfOne, 0x1p-10)
        XCTAssertEqual(float16.leastNormalMagnitude, 0x1p-14)
        
        #if arch(arm)
        XCTAssertEqual(float16.leastNonzeroMagnitude, 0x1p-14)
        #else
        XCTAssertEqual(float16.leastNonzeroMagnitude, 0x1p-24)
        #endif
        
        XCTAssertEqual(float16.exponentBitCount, 5)
        XCTAssertEqual(float16.significandBitCount, 10)
    }
    
    func testFloat16Rounding() {
        
        XCTAssertEqual(round(1.5 as float16), 2.0)
        XCTAssertEqual(round(1.4 as float16), 1.0)
        XCTAssertEqual(ceil(1.5 as float16), 2.0)
        XCTAssertEqual(floor(1.5 as float16), 1.0)
    }
    
    func testFloat16Arithmetic() {
        
        XCTAssertTrue((1.5 as float16) < 3.5)
        XCTAssertFalse((1.5 as float16) > 3.5)
        
        XCTAssertTrue(1.5 as float16 == 1.5)
        XCTAssertFalse(1.5 as float16 == 3.5)
        
        XCTAssertEqual(1.5 as float16 + 2.0, 3.5)
        XCTAssertEqual(2.5 as float16 - 1.5, 1.0)
        XCTAssertEqual(2.5 as float16 * 2.0, 5.0)
        XCTAssertEqual(5.0 as float16 / 2.0, 2.5)
        
    }
    
}
