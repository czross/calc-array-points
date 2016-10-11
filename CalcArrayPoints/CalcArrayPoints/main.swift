//
//  main.swift
//  CalcArrayPoints
//
//  Created by Brian Ross on 10/9/16.
//  Copyright © 2016 Chris Ross. All rights reserved.
//

import Foundation


func add(first: Int, second: Int) -> Int {
        return first + second
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

func simpleMath(firstNum: String, secondNum: String, operand: (Int, Int) -> Int) -> Int {
    let numOne = Int.init(firstNum)
    let numTwo = Int.init(secondNum)
    return operand(numOne!, numTwo!)
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

func complicatedMath(array: [String], operation: ([Int]) -> Int) -> Int {
    var ret: Int = 0
    var intArray: [Int] = []
    let max = array.count - 1
    var count = 0
    while (count < max) {
        intArray.append(Int.init(array[count])!)
        count += 1
    }
    ret = operation(intArray)
    return ret
}

func addPointsTubple(pointOne: (Int, Int), pointTwo: (Int, Int)) -> (Int, Int) {
    var ret = (0, 0)
    ret.0 = pointOne.0 + pointTwo.0
    ret.1 = pointOne.1 + pointTwo.1
    return ret
}

func subPointsTubple(pointOne: (Int, Int), pointTwo: (Int, Int)) -> (Int, Int) {
    var ret = (0, 0)
    ret.0 = pointOne.0 - pointTwo.0
    ret.1 = pointOne.1 - pointTwo.1
    return ret
}

func tupleWork(array: [String], function: ((Int, Int), (Int, Int)) -> (Int, Int)) -> (Int, Int) {
    let first = (Int.init(array[0])!, Int.init(array[1])!)
    let second = (Int.init(array[2])!, Int.init(array[3])!)
    return function(first, second)
}

func addPointsDict(pointOne: [String:Double], pointTwo: [String:Double]) -> [String:Double] {
    let xPoint: Double = pointOne["x"]! + pointTwo["x"]!
    let yPoint: Double = pointOne["y"]! + pointTwo["y"]!
    let ret: [String:Double] = [
        "x" : xPoint,
        "y" : yPoint
    ]
    return ret
}

func subPointsDict(pointOne: [String:Double], pointTwo: [String:Double]) -> [String:Double] {
    let xPoint: Double = pointOne["x"]! - pointTwo["x"]!
    let yPoint: Double = pointOne["y"]! - pointTwo["y"]!
    let ret: [String:Double] = [
        "x" : xPoint,
        "y" : yPoint
    ]
    return ret
}

func workDict(array: [Double], operation: ([String:Double], [String:Double]) -> [String:Double]) -> [String:Double] {
    let pointOne: [String:Double] = [
        "x" : Double.init(array[0]),
        "y" : Double.init(array[1])
    ]
    let pointTwo: [String:Double] = [
        "x" : Double.init(array[2]),
        "y" : Double.init(array[3])
    ]
    return operation(pointOne, pointTwo)
}


let response = readLine(strippingNewline: true)!

if (response == nil || response.isEmpty) {
    print("please enter something")
} else {
    var allArray = response.characters.split(whereSeparator: { $0 == " " })
    .map(String.init)
    var arrayLength = allArray.count
    var answer: Int
    var tupleAnswer: (Int, Int)
    var dictAnswer: [String:Double]
    var choice = allArray[arrayLength - 1]
    if (choice == "+" || choice == "-" || choice == "*" || choice == "/") {
        if (choice == "+") {
            answer =  simpleMath(firstNum: allArray[0], secondNum: allArray[1], operand: add)
        } else if (choice == "-") {
            answer = simpleMath(firstNum: allArray[0], secondNum: allArray[1], operand: subtract)
        } else if (choice == "*") {
            answer = simpleMath(firstNum: allArray[0], secondNum: allArray[1], operand: multiply)
        } else {
            answer = simpleMath(firstNum: allArray[0], secondNum: allArray[1], operand: divide)
        }
    } else if (choice == "add" || choice == "mul" || choice == "count" || choice == "avg") {
        if (choice == "add") {
            answer = complicatedMath(array: allArray, operation: arrayAdd)
        } else if (choice == "mul") {
            answer = complicatedMath(array: allArray, operation: arrayMultiply)
        } else if (choice == "count") {
            answer = complicatedMath(array: allArray, operation: arrayCount)
        } else {
            answer = complicatedMath(array: allArray, operation: arrayAverage)
        }
    } else if (choice == "addTuple" || choice == "subTuples"){
        if (allArray.count == 5) {
            if (choice == "addTubple") {
                tupleAnswer = tupleWork(array: allArray, function: addPointsTubple)
            } else {
                tupleAnswer = tupleWork(array: allArray, function: subPointsTubple)
            }
        } else {
            print("Please only enter 4 digits")
        }
    } else if (choice == "addDict" || choice == "subDict"){
        var entry = allArray[0]
        
    } else {
        print("Please choose one of the correct options")
    }
}
