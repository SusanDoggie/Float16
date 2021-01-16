//
//  float16.h
//
//  The MIT License
//  Copyright (c) 2015 - 2021 Susan Cheng. All rights reserved.
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

#ifndef float16_h
#define float16_h

#include <stdbool.h>
#include <math.h>

typedef union {
    
#ifdef _Float16
    _Float16 storage;
#else
    __fp16 storage;
#endif
    
    unsigned short bitPattern;
    
} float16;

static inline char __fp16toint8(float16 x) {
    return (char)x.storage;
}

static inline short __fp16toint16(float16 x) {
    return (short)x.storage;
}

static inline int __fp16toint32(float16 x) {
    return (int)x.storage;
}

static inline long long __fp16toint64(float16 x) {
    return (long long)x.storage;
}

static inline long __fp16toint(float16 x) {
    return (long)x.storage;
}

static inline unsigned char __fp16touint8(float16 x) {
    return (unsigned char)x.storage;
}

static inline unsigned short __fp16touint16(float16 x) {
    return (unsigned short)x.storage;
}

static inline unsigned int __fp16touint32(float16 x) {
    return (unsigned int)x.storage;
}

static inline unsigned long long __fp16touint64(float16 x) {
    return (unsigned long long)x.storage;
}

static inline unsigned long __fp16touint(float16 x) {
    return (unsigned long)x.storage;
}

static inline float __fp16to32(float16 x) {
    return (float)x.storage;
}

static inline double __fp16to64(float16 x) {
    return (double)x.storage;
}

static inline float16 __int8tofp16(char x) {
    return (float16) { .storage = x };
}

static inline float16 __int16tofp16(short x) {
    return (float16) { .storage = x };
}

static inline float16 __int32tofp16(int x) {
    return (float16) { .storage = x };
}

static inline float16 __int64tofp16(long long x) {
    return (float16) { .storage = x };
}

static inline float16 __inttofp16(long x) {
    return (float16) { .storage = x };
}

static inline float16 __uint8tofp16(unsigned char x) {
    return (float16) { .storage = x };
}

static inline float16 __uint16tofp16(unsigned short x) {
    return (float16) { .storage = x };
}

static inline float16 __uint32tofp16(unsigned int x) {
    return (float16) { .storage = x };
}

static inline float16 __uint64tofp16(unsigned long long x) {
    return (float16) { .storage = x };
}

static inline float16 __uinttofp16(unsigned long x) {
    return (float16) { .storage = x };
}

static inline float16 __fp32to16(float x) {
    return (float16) { .storage = x };
}

static inline float16 __fp64to16(double x) {
    return (float16) { .storage = x };
}

static inline float16 __fp16_neg(float16 x) {
    return (float16) { .storage = -x.storage };
}

static inline float16 __fp16_abs(float16 x) {
    return (float16) { .storage = fabsf(x.storage) };
}

static inline float16 __fp16_add(float16 x, float16 y) {
    return (float16) { .storage = x.storage + y.storage };
}

static inline float16 __fp16_sub(float16 x, float16 y) {
    return (float16) { .storage = x.storage - y.storage };
}

static inline float16 __fp16_mul(float16 x, float16 y) {
    return (float16) { .storage = x.storage * y.storage };
}

static inline float16 __fp16_div(float16 x, float16 y) {
    return (float16) { .storage = x.storage / y.storage };
}

static inline bool __fp16_equal(float16 x, float16 y) {
    return x.storage == y.storage;
}

static inline bool __fp16_less_than(float16 x, float16 y) {
    return x.storage < y.storage;
}

static inline float16 __fp16_remainder(float16 x, float16 y) {
    return (float16) { .storage = remainderf(x.storage, y.storage) };
}

static inline float16 __fp16_fma(float16 x, float16 y, float16 z) {
    return (float16) { .storage = fmaf(x.storage, y.storage, z.storage) };
}

static inline float16 __fp16_sqrt(float16 x) {
    return (float16) { .storage = sqrtf(x.storage) };
}

static inline float16 __fp16_round(float16 x) {
    return (float16) { .storage = roundf(x.storage) };
}

static inline float16 __fp16_rint(float16 x) {
    return (float16) { .storage = rintf(x.storage) };
}

static inline float16 __fp16_trunc(float16 x) {
    return (float16) { .storage = truncf(x.storage) };
}

static inline float16 __fp16_floor(float16 x) {
    return (float16) { .storage = floorf(x.storage) };
}

static inline float16 __fp16_ceil(float16 x) {
    return (float16) { .storage = ceilf(x.storage) };
}

#endif
