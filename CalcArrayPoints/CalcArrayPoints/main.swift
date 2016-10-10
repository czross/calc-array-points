//
//  main.swift
//  CalcArrayPoints
//
//  Created by Brian Ross on 10/9/16.
//  Copyright © 2016 Chris Ross. All rights reserved.
//

import Foundation

print("Hello, World!")

func add(first: Int, second: Int) -> Int {
    let ret = first + second
    return ret
}

func subtract(first: Int, second: Int) -> Int {
    let ret = first - second
    return ret
}

func multiply(first: Int, second: Int) -> Int {
    let ret = first * second
    return ret
}

func divide(first: Int, second: Int) -> Int {
    let ret = first / second
    return ret
}

func simpleMath(firstNum: Int, secondNum: Int, operand: (Int, Int) -> Int) -> Int {
    let ret = operand(firstNum, secondNum)
    return ret
}

func arrayAdd(array: [Int]) -> Int {
    var ret: Int = 0
    for num in array {
        ret += num
    }
    return ret
}

func arrayMultiply(array: [Int]) -> Int {
    var ret: Int = 0
    for num in array {
        ret *= num
    }
    return ret
}

func arrayCount(array: [Int]) -> Int {
    let ret = array.count
    return ret
}

func arrayAverage(array: [Int]) -> Int {
    let count = array.count
    var ret = arrayAdd(array: array)
    ret = ret / count
    return ret
}
/*
func arrayMath(array: [Int], operation: ([Int])) -> Int {
    let nums = array
    let ret = operation(nums)
    return ret
}

*/
