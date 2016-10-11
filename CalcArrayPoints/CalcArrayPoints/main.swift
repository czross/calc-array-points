//
//  main.swift
//  CalcArrayPoints
//
//  Created by Brian Ross on 10/9/16.
//  Copyright © 2016 Chris Ross. All rights reserved.
//

import Foundation


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

func arrayMath(array: [Int], sum: ([Int]) -> Int) -> Int {
    var ret: Int = 0
    ret = sum(array)
    return (ret / array.count)
}

func complicatedMath(array: [Int], operation: ([Int]) -> Int) -> Int {
    var ret: Int = 0
    ret = operation(array)
    return ret
}

let response = readLine(strippingNewline: true)!

if (response == nil || response.isEmpty) {
    print("please enter something")
} else {
    var allArray = response.characters.split(whereSeparator: { $0 == " " })
    .map(String.init)
    var arrayLength = allArray.count
    var answer: Int = 0
    var choice = allArray[arrayLength - 1]
    if (choice == "+" || choice == "-" || choice == "*" || choice == "/") {
        
    } else {
        
    }
}
