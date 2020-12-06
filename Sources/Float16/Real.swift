//
//  Real.swift
//
//  The MIT License
//  Copyright (c) 2015 - 2020 Susan Cheng. All rights reserved.
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

import RealModule

extension float16: Real {
    
    @_transparent
    public static func cos(_ x: float16) -> float16 {
        return float16(.cos(Float(x)))
    }
    
    @_transparent
    public static func sin(_ x: float16) -> float16 {
        return float16(.sin(Float(x)))
    }
    
    @_transparent
    public static func tan(_ x: float16) -> float16 {
        return float16(.tan(Float(x)))
    }
    
    @_transparent
    public static func acos(_ x: float16) -> float16 {
        return float16(.acos(Float(x)))
    }
    
    @_transparent
    public static func asin(_ x: float16) -> float16 {
        return float16(.asin(Float(x)))
    }
    
    @_transparent
    public static func atan(_ x: float16) -> float16 {
        return float16(.atan(Float(x)))
    }
    
    @_transparent
    public static func cosh(_ x: float16) -> float16 {
        return float16(.cosh(Float(x)))
    }
    
    @_transparent
    public static func sinh(_ x: float16) -> float16 {
        return float16(.sinh(Float(x)))
    }
    
    @_transparent
    public static func tanh(_ x: float16) -> float16 {
        return float16(.tanh(Float(x)))
    }
    
    @_transparent
    public static func acosh(_ x: float16) -> float16 {
        return float16(.acosh(Float(x)))
    }
    
    @_transparent
    public static func asinh(_ x: float16) -> float16 {
        return float16(.asinh(Float(x)))
    }
    
    @_transparent
    public static func atanh(_ x: float16) -> float16 {
        return float16(.atanh(Float(x)))
    }
    
    @_transparent
    public static func exp(_ x: float16) -> float16 {
        return float16(.exp(Float(x)))
    }
    
    @_transparent
    public static func expMinusOne(_ x: float16) -> float16 {
        return float16(.expMinusOne(Float(x)))
    }
    
    @_transparent
    public static func log(_ x: float16) -> float16 {
        return float16(.log(Float(x)))
    }
    
    @_transparent
    public static func log(onePlus x: float16) -> float16 {
        return float16(.log(onePlus: Float(x)))
    }
    
    @_transparent
    public static func erf(_ x: float16) -> float16 {
        return float16(.erf(Float(x)))
    }
    
    @_transparent
    public static func erfc(_ x: float16) -> float16 {
        return float16(.erfc(Float(x)))
    }
    
    @_transparent
    public static func exp2(_ x: float16) -> float16 {
        return float16(.exp2(Float(x)))
    }
    
    @_transparent
    public static func exp10(_ x: float16) -> float16 {
        return float16(.exp10(Float(x)))
    }
    
    @_transparent
    public static func hypot(_ x: float16, _ y: float16) -> float16 {
        if x.isInfinite || y.isInfinite { return .infinity }
        let xf = Float(x)
        let yf = Float(y)
        return float16(.sqrt(xf*xf + yf*yf))
    }
    
    @_transparent
    public static func gamma(_ x: float16) -> float16 {
        return float16(.gamma(Float(x)))
    }
    
    @_transparent
    public static func log2(_ x: float16) -> float16 {
        return float16(.log2(Float(x)))
    }
    
    @_transparent
    public static func log10(_ x: float16) -> float16 {
        return float16(.log10(Float(x)))
    }
    
    @_transparent
    public static func pow(_ x: float16, _ y: float16) -> float16 {
        return float16(.pow(Float(x), Float(y)))
    }
    
    @_transparent
    public static func pow(_ x: float16, _ n: Int) -> float16 {
        return float16(.pow(Float(x), n))
    }
    
    @_transparent
    public static func root(_ x: float16, _ n: Int) -> float16 {
        return float16(.root(Float(x), n))
    }
    
    @_transparent
    public static func atan2(y: float16, x: float16) -> float16 {
        return float16(.atan2(y: Float(y), x: Float(x)))
    }
    
    #if !os(Windows)
    @_transparent
    public static func logGamma(_ x: float16) -> float16 {
        return float16(.logGamma(Float(x)))
    }
    #endif
}
