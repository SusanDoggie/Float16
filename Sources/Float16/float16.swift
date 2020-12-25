//
//  float16.swift
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

@_exported import CFloat16

extension float16 {
    
    @_transparent
    public init(_ x: Int8) {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            self.init(Float16(x))
            return
        }
        
        #endif
        
        self = __int8tofp16(x)
    }
    
    @_transparent
    public init(_ x: Int16) {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            self.init(Float16(x))
            return
        }
        
        #endif
        
        self = __int16tofp16(x)
    }
    
    @_transparent
    public init(_ x: Int32) {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            self.init(Float16(x))
            return
        }
        
        #endif
        
        self = __int32tofp16(x)
    }
    
    @_transparent
    public init(_ x: Int64) {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            self.init(Float16(x))
            return
        }
        
        #endif
        
        self = __int64tofp16(x)
    }
    
    @_transparent
    public init(_ x: Int) {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            self.init(Float16(x))
            return
        }
        
        #endif
        
        self = __inttofp16(x)
    }
    
    @_transparent
    public init(_ x: UInt8) {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            self.init(Float16(x))
            return
        }
        
        #endif
        
        self = __uint8tofp16(x)
    }
    
    @_transparent
    public init(_ x: UInt16) {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            self.init(Float16(x))
            return
        }
        
        #endif
        
        self = __uint16tofp16(x)
    }
    
    @_transparent
    public init(_ x: UInt32) {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            self.init(Float16(x))
            return
        }
        
        #endif
        
        self = __uint32tofp16(x)
    }
    
    @_transparent
    public init(_ x: UInt64) {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            self.init(Float16(x))
            return
        }
        
        #endif
        
        self = __uint64tofp16(x)
    }
    
    @_transparent
    public init(_ x: UInt) {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            self.init(Float16(x))
            return
        }
        
        #endif
        
        self = __uinttofp16(x)
    }
    
    #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
    
    @_transparent
    @available(iOS 14.0, tvOS 14.0, watchOS 7.0, *)
    public init(_ x: Float16) {
        self.init(storage: x)
    }
    
    #endif
    
    @_transparent
    public init(_ x: Float) {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            self.init(Float16(x))
            return
        }
        
        #endif
        
        self = __fp32to16(x)
    }
    
    @_transparent
    public init(_ x: Double) {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            self.init(Float16(x))
            return
        }
        
        #endif
        
        self = __fp64to16(x)
    }
}

extension float16: CustomStringConvertible {
    
    @_transparent
    public var description: String {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            return self.storage.description
        }
        
        #endif
        
        return __fp16to32(self).description
    }
}

extension Int8 {
    
    @_transparent
    public init(_ x: float16) {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            self.init(x.storage)
            return
        }
        
        #endif
        
        self = __fp16toint8(x)
    }
}

extension Int16 {
    
    @_transparent
    public init(_ x: float16) {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            self.init(x.storage)
            return
        }
        
        #endif
        
        self = __fp16toint16(x)
    }
}

extension Int32 {
    
    @_transparent
    public init(_ x: float16) {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            self.init(x.storage)
            return
        }
        
        #endif
        
        self = __fp16toint32(x)
    }
}

extension Int64 {
    
    @_transparent
    public init(_ x: float16) {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            self.init(x.storage)
            return
        }
        
        #endif
        
        self = __fp16toint64(x)
    }
}

extension Int {
    
    @_transparent
    public init(_ x: float16) {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            self.init(x.storage)
            return
        }
        
        #endif
        
        self = __fp16toint(x)
    }
}

extension UInt8 {
    
    @_transparent
    public init(_ x: float16) {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            self.init(x.storage)
            return
        }
        
        #endif
        
        self = __fp16touint8(x)
    }
}

extension UInt16 {
    
    @_transparent
    public init(_ x: float16) {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            self.init(x.storage)
            return
        }
        
        #endif
        
        self = __fp16touint16(x)
    }
}

extension UInt32 {
    
    @_transparent
    public init(_ x: float16) {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            self.init(x.storage)
            return
        }
        
        #endif
        
        self = __fp16touint32(x)
    }
}

extension UInt64 {
    
    @_transparent
    public init(_ x: float16) {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            self.init(x.storage)
            return
        }
        
        #endif
        
        self = __fp16touint64(x)
    }
}

extension UInt {
    
    @_transparent
    public init(_ x: float16) {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            self.init(x.storage)
            return
        }
        
        #endif
        
        self = __fp16touint(x)
    }
}

#if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)

@available(iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension Float16 {
    
    @_transparent
    public init(_ x: float16) {
        self = x.storage
    }
}

#endif

extension Float {
    
    @_transparent
    public init(_ x: float16) {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            self.init(x.storage)
            return
        }
        
        #endif
        
        self = __fp16to32(x)
    }
}

extension Double {
    
    @_transparent
    public init(_ x: float16) {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            self.init(x.storage)
            return
        }
        
        #endif
        
        self = __fp16to64(x)
    }
}

extension float16: BinaryFloatingPoint {
    
    public typealias RawExponent = UInt
    
    public typealias Exponent = Int
    
    public typealias RawSignificand = UInt16
    
    public typealias Magnitude = float16
    
    @_transparent
    public init(sign: FloatingPointSign, exponentBitPattern: UInt, significandBitPattern: UInt16) {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            self.init(Float16(sign: sign, exponentBitPattern: exponentBitPattern, significandBitPattern: significandBitPattern))
            return
        }
        
        #endif
        
        let signShift = float16.significandBitCount + float16.exponentBitCount
        let sign = UInt16(sign == .minus ? 1 : 0)
        let exponent = UInt16(exponentBitPattern & float16._infinityExponent)
        let significand = UInt16(significandBitPattern & float16._significandMask)
        
        self.init(bitPattern: sign &<< UInt16(signShift) | exponent &<< UInt16(float16.significandBitCount) | significand)
    }
    
    @_transparent
    public init(sign: FloatingPointSign, exponent: Int, significand: float16) {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            self.init(Float16(sign: sign, exponent: exponent, significand: significand.storage))
            return
        }
        
        #endif
        
        var result = significand
        if sign == .minus { result = -result }
        if significand.isFinite && !significand.isZero {
            var clamped = exponent
            let leastNormalExponent = 1 - Int(float16._exponentBias)
            let greatestFiniteExponent = Int(float16._exponentBias)
            if clamped < leastNormalExponent {
                clamped = max(clamped, 3*leastNormalExponent)
                while clamped < leastNormalExponent {
                    result  *= float16.leastNormalMagnitude
                    clamped -= leastNormalExponent
                }
            }
            else if clamped > greatestFiniteExponent {
                clamped = min(clamped, 3*greatestFiniteExponent)
                let step = float16(sign: .plus,
                                   exponentBitPattern: float16._infinityExponent - 1,
                                   significandBitPattern: 0)
                while clamped > greatestFiniteExponent {
                    result  *= step
                    clamped -= greatestFiniteExponent
                }
            }
            let scale = float16(
                sign: .plus,
                exponentBitPattern: UInt(Int(float16._exponentBias) + clamped),
                significandBitPattern: 0
            )
            result = result * scale
        }
        self = result
    }
    
    @_transparent
    public static var exponentBitCount: Int {
        return 5
    }
    
    @_transparent
    public static var significandBitCount: Int {
        return 10
    }
    
    @inlinable
    public init(nan payload: RawSignificand, signaling: Bool) {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            self.init(Float16(nan: payload, signaling: signaling))
            return
        }
        
        #endif
        
        
        precondition(payload < (float16._quietNaNMask &>> 1), "NaN payload is not encodable.")
        
        var significand = payload
        
        significand |= float16._quietNaNMask &>> (signaling ? 1 : 0)
        
        self.init(sign: .plus, exponentBitPattern: float16._infinityExponent, significandBitPattern: significand)
    }
    
    @_transparent
    public static var nan: float16 {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            return float16(Float16.nan)
        }
        
        #endif
        
        return float16(nan: 0, signaling: false)
    }
    
    @_transparent
    public static var signalingNaN: float16 {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            return float16(Float16.signalingNaN)
        }
        
        #endif
        
        return float16(nan: 0, signaling: true)
    }
    
    @_transparent
    public static var infinity: float16 {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            return float16(Float16.infinity)
        }
        
        #endif
        
        return float16(sign: .plus, exponentBitPattern: _infinityExponent, significandBitPattern: 0)
    }
    
    @_transparent
    public static var greatestFiniteMagnitude: float16 {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            return float16(Float16.greatestFiniteMagnitude)
        }
        
        #endif
        
        return float16(
            sign: .plus,
            exponentBitPattern: _infinityExponent - 1,
            significandBitPattern: _significandMask
        )
    }
    
    @_transparent
    public static var pi: float16 {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            return float16(Float16.pi)
        }
        
        #endif
        
        return float16(Float.pi)
    }
    
    @_transparent
    public var binade: float16 {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            return float16(storage.binade)
        }
        
        #endif
        
        guard _fastPath(isFinite) else { return .nan }
        
        #if !arch(arm)
        
        if _slowPath(isSubnormal) {
            let bitPattern_ = (self * 0x1p10).bitPattern & (-float16.infinity).bitPattern
            return float16(bitPattern: bitPattern_) * 0x1p-10
        }
        
        #endif
        
        return float16(bitPattern: bitPattern & (-float16.infinity).bitPattern)
    }
    
    @_transparent
    public var significandWidth: Int {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            return storage.significandWidth
        }
        
        #endif
        
        let trailingZeroBits = significandBitPattern.trailingZeroBitCount
        
        if isNormal {
            guard significandBitPattern != 0 else { return 0 }
            return float16.significandBitCount &- trailingZeroBits
        }
        
        if isSubnormal {
            let leadingZeroBits = significandBitPattern.leadingZeroBitCount
            return RawSignificand.bitWidth &- (trailingZeroBits &+ leadingZeroBits &+ 1)
        }
        
        return -1
    }
    
    @_transparent
    public var ulp: float16 {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            return float16(storage.ulp)
        }
        
        #endif
        
        guard _fastPath(isFinite) else { return .nan }
        
        if _fastPath(isNormal) {
            let bitPattern_ = bitPattern & float16.infinity.bitPattern
            return float16(bitPattern: bitPattern_) * 0x1p-10
        }
        
        return .leastNormalMagnitude * 0x1p-10
    }
    
    @inlinable
    public static var ulpOfOne: float16 {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            return float16(Float16.ulpOfOne)
        }
        
        #endif
        
        return 0x1p-10
    }
    
    @_transparent
    public static var leastNormalMagnitude: float16 {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            return float16(Float16.leastNormalMagnitude)
        }
        
        #endif
        
        return 0x1p-14
    }
    
    @_transparent
    public static var leastNonzeroMagnitude: float16 {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            return float16(Float16.leastNonzeroMagnitude)
        }
        
        #endif
        
        #if arch(arm)
        
        return leastNormalMagnitude
        
        #else
        
        return leastNormalMagnitude * ulpOfOne
        
        #endif
    }
    
    @inlinable
    @inline(__always)
    static var _infinityExponent: UInt {
        return 1 &<< UInt(exponentBitCount) - 1
    }
    
    @inlinable
    @inline(__always)
    static var _exponentBias: UInt {
        return _infinityExponent &>> 1
    }
    
    @inlinable
    @inline(__always)
    static var _significandMask: RawSignificand {
        return 1 &<< RawSignificand(significandBitCount) - 1
    }
    
    @inlinable
    @inline(__always)
    static var _quietNaNMask: RawSignificand {
        return 1 &<< RawSignificand(significandBitCount - 1)
    }
    
    @_transparent
    public var sign: FloatingPointSign {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            return storage.sign
        }
        
        #endif
        
        let shift = float16.significandBitCount + float16.exponentBitCount
        return FloatingPointSign(rawValue: Int(bitPattern &>> RawSignificand(shift)))!
    }
    
    @_transparent
    public var exponentBitPattern: UInt {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            return storage.exponentBitPattern
        }
        
        #endif
        
        return UInt(bitPattern &>> UInt16(float16.significandBitCount)) & float16._infinityExponent
    }
    
    @_transparent
    public var significandBitPattern: RawSignificand {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            return storage.significandBitPattern
        }
        
        #endif
        
        return RawSignificand(bitPattern) & float16._significandMask
    }
    
    @_transparent
    public var exponent: Int {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            return storage.exponent
        }
        
        #endif
        
        if !isFinite { return .max }
        if isZero { return .min }
        let provisional = Int(exponentBitPattern) - Int(float16._exponentBias)
        if isNormal { return provisional }
        let shift = float16.significandBitCount - significandBitPattern._binaryLogarithm()
        return provisional + 1 - shift
    }
    
    @_transparent
    public var significand: float16 {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            return float16(storage.significand)
        }
        
        #endif
        
        if isNaN { return self }
        
        if isNormal {
            return float16(sign: .plus, exponentBitPattern: float16._exponentBias, significandBitPattern: significandBitPattern)
        }
        
        if isSubnormal {
            let shift = float16.significandBitCount - significandBitPattern._binaryLogarithm()
            return float16(sign: .plus, exponentBitPattern: float16._exponentBias, significandBitPattern: significandBitPattern &<< shift)
        }
        
        return float16(sign: .plus, exponentBitPattern: exponentBitPattern, significandBitPattern: 0)
    }
    
    @_transparent
    public var nextUp: float16 {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            return float16(storage.nextUp)
        }
        
        #endif
        
        let x = self + 0
        
        #if arch(arm)
        
        if _slowPath(x == 0) { return .leastNonzeroMagnitude }
        if _slowPath(x == -.leastNonzeroMagnitude) { return -0.0 }
        
        #endif
        
        if _fastPath(x < .infinity) {
            let increment = Int16(bitPattern: x.bitPattern) &>> 15 | 1
            let bitPattern_ = x.bitPattern &+ UInt16(bitPattern: increment)
            return float16(bitPattern: bitPattern_)
        }
        
        return x
    }
    
    @_transparent
    public var isNormal: Bool {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            return storage.isNormal
        }
        
        #endif
        
        return exponentBitPattern > 0 && isFinite
    }
    
    @_transparent
    public var isFinite: Bool {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            return storage.isFinite
        }
        
        #endif
        
        return exponentBitPattern < float16._infinityExponent
    }
    
    @_transparent
    public var isZero: Bool {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            return storage.isZero
        }
        
        #endif
        
        return exponentBitPattern == 0 && significandBitPattern == 0
    }
    
    @_transparent
    public var isSubnormal: Bool {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            return storage.isSubnormal
        }
        
        #endif
        
        return exponentBitPattern == 0 && significandBitPattern != 0
    }
    
    @_transparent
    public var isInfinite: Bool {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            return storage.isInfinite
        }
        
        #endif
        
        return !isFinite && significandBitPattern == 0
    }
    
    @_transparent
    public var isNaN: Bool {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            return storage.isNaN
        }
        
        #endif
        
        return !isFinite && significandBitPattern != 0
    }
    
    @_transparent
    public var isSignalingNaN: Bool {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            return storage.isSignalingNaN
        }
        
        #endif
        
        return isNaN && (significandBitPattern & float16._quietNaNMask) == 0
    }
    
    @_transparent
    public var isCanonical: Bool {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            return storage.isCanonical
        }
        
        #endif
        
        if Self.leastNonzeroMagnitude == Self.leastNormalMagnitude {
            
            if exponentBitPattern == 0 && significandBitPattern != 0 {
                return false
            }
        }
        
        return true
    }
    
    @_transparent
    public var magnitude: float16 {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            return float16(self.storage.magnitude)
        }
        
        #endif
        
        return __fp16_abs(self)
    }
    
    @_transparent
    public func isEqual(to other: float16) -> Bool {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            return self.storage.isEqual(to: other.storage)
        }
        
        #endif
        
        return __fp16_equal(self, other)
    }
    
    @_transparent
    public func isLess(than other: float16) -> Bool {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            return self.storage.isLess(than: other.storage)
        }
        
        #endif
        
        return __fp16_less_than(self, other)
    }
    
    @_transparent
    public func isLessThanOrEqualTo(_ other: float16) -> Bool {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            return self.storage.isLessThanOrEqualTo(other.storage)
        }
        
        #endif
        
        return __fp16_equal(self, other) || __fp16_less_than(self, other)
    }
    
    @_transparent
    public mutating func round(_ rule: FloatingPointRoundingRule) {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            self = float16(storage.rounded(rule))
            return
        }
        
        #endif
        
        switch rule {
        case .toNearestOrAwayFromZero: self = __fp16_round(self)
        case .toNearestOrEven: self = __fp16_rint(self)
        case .towardZero: self = __fp16_trunc(self)
        case .awayFromZero:
            if sign == .minus {
                self = __fp16_floor(self)
            } else {
                self = __fp16_ceil(self)
            }
        case .up: self = __fp16_ceil(self)
        case .down: self = __fp16_floor(self)
        @unknown default: self._roundSlowPath(rule)
        }
    }
    
    @usableFromInline
    mutating func _roundSlowPath(_ rule: FloatingPointRoundingRule) {
        self.round(rule)
    }
}

extension float16 {
    
    public typealias IntegerLiteralType = Int64
    
    @_transparent
    public init(integerLiteral value: Int64) {
        self = float16(value)
    }
}

extension float16 {
    
    public typealias FloatLiteralType = Float
    
    @_transparent
    public init(floatLiteral value: Float) {
        self = float16(value)
    }
}

extension float16: Hashable {
    
    @inlinable
    public func hash(into hasher: inout Hasher) {
        var v = self
        if isZero {
            v = 0
        }
        hasher.combine(v.bitPattern)
    }
}

extension float16 {
    
    public typealias Stride = float16
    
    @_transparent
    public func distance(to other: float16) -> float16 {
        return other - self
    }
    
    @_transparent
    public func advanced(by amount: float16) -> float16 {
        return self + amount
    }
}

extension float16 {
    
    @_transparent
    public mutating func negate() {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            self.storage.negate()
            return
        }
        
        #endif
        
        self = __fp16_neg(self)
    }
    
    @_transparent
    public mutating func formRemainder(dividingBy other: float16) {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            self.storage.formRemainder(dividingBy: other.storage)
            return
        }
        
        #endif
        
        self = __fp16_remainder(self, other)
    }
    
    @_transparent
    public mutating func formTruncatingRemainder(dividingBy other: float16) {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            self.storage = self.storage.truncatingRemainder(dividingBy: other.storage)
            return
        }
        
        #endif
        
        self = float16(Float(self).truncatingRemainder(dividingBy: Float(other)))
    }
    
    @_transparent
    public mutating func formSquareRoot() {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            self.storage.formSquareRoot()
            return
        }
        
        #endif
        
        self = __fp16_sqrt(self)
    }
    
    @_transparent
    public mutating func addProduct(_ lhs: float16, _ rhs: float16) {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            self.storage.addProduct(lhs.storage, rhs.storage)
            return
        }
        
        #endif
        
        self = __fp16_fma(lhs, rhs, self)
    }
    
    @_transparent
    public static prefix func -(x: float16) -> float16 {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            return float16(-x.storage)
        }
        
        #endif
        
        return __fp16_neg(x)
    }
    
    @_transparent
    public static func +=(lhs: inout float16, rhs: float16) {
        lhs = lhs + rhs
    }
    
    @_transparent
    public static func -=(lhs: inout float16, rhs: float16) {
        lhs = lhs - rhs
    }
    
    @_transparent
    public static func *=(lhs: inout float16, rhs: float16) {
        lhs = lhs * rhs
    }
    
    @_transparent
    public static func /=(lhs: inout float16, rhs: float16) {
        lhs = lhs / rhs
    }
    
    @_transparent
    public static func +(lhs: float16, rhs: float16) -> float16 {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            return float16(lhs.storage + rhs.storage)
        }
        
        #endif
        
        return __fp16_add(lhs, rhs)
    }
    
    @_transparent
    public static func -(lhs: float16, rhs: float16) -> float16 {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            return float16(lhs.storage - rhs.storage)
        }
        
        #endif
        
        return __fp16_sub(lhs, rhs)
    }
    
    @_transparent
    public static func *(lhs: float16, rhs: float16) -> float16 {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            return float16(lhs.storage * rhs.storage)
        }
        
        #endif
        
        return __fp16_mul(lhs, rhs)
    }
    
    @_transparent
    public static func /(lhs: float16, rhs: float16) -> float16 {
        
        #if swift(>=5.3) && !os(macOS) && !targetEnvironment(macCatalyst)
        
        if #available(iOS 14.0, tvOS 14.0, watchOS 7.0, *) {
            return float16(lhs.storage / rhs.storage)
        }
        
        #endif
        
        return __fp16_div(lhs, rhs)
    }
}
