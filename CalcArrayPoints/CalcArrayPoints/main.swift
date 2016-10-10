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

