//
//  main.swift
//  CalcArrayPoints
//
//  Created by studentuser on 10/10/16.
//  Copyright © 2016 emh. All rights reserved.
//

import Foundation

//Part 1
func mathOperation (left: Int, right: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(left, right)
}

func add(left: Int, right: Int) -> Int {
    return left + right
}

func subtract(left: Int, right: Int) -> Int {
    return left - right
}

func multiply(left: Int, right: Int) -> Int {
    return left * right
}

func divide(left: Int, right: Int) -> Int {
    return left / right
}

//Part 2
func reduce (array: Array<Int>, operation: (Array<Int>) -> Int) -> Int {
    return operation(array)
}

func add (array: Array<Int>) -> Int {
   // var result: Int = array[0] + array[1]
    var result = 0
    for index in 0...array.count-1 {
        result += array[index]
    }
    return result
}

func multiply (array: Array<Int>) -> Int {
    // var result: Int = array[0] + array[1]
    var result = 1
    for index in 0...array.count - 1 {
    result *= array[index]
    }
    return result
}

func average (array: Array<Int>) -> Int {
    // var result: Int = array[0] + array[1]
    var result = 0
    for index in 0...array.count - 1 {
        result += array[index]
    }
    result /= array.count
    return result
}

func count (array: Array<Int>) -> Int {
    // var result: Int = array[0] + array[1]
    var result = 0
    for _ in 0...array.count - 1 {
        result += 1
    }
    return result
}

//Part 3: tubles
func add (p1: (Int, Int), p2: (Int, Int)) -> (Int, Int) {
    return (p1.0 + p2.0, p1.1 + p2.1)
}

func subtract (p1: (Int, Int), p2: (Int, Int)) -> (Int, Int) {
    return (p1.0 - p2.0, p1.1 - p2.1)
}

//Part 3: int
func add (p1: Dictionary<String, Int>, p2: Dictionary<String, Int>) -> Dictionary<String, Int>? {
    return [
        "x" : p1["x"]! + p2["x"]!,
        "y" : p1["y"]! + p2["y"]!
    ]
}

func subtract (p1: Dictionary<String, Int>, p2: Dictionary<String, Int>) -> Dictionary<String, Int>? {
    return [
        "x" : p1["x"]! - p2["x"]!,
        "y" : p1["y"]! - p2["y"]!
    ]
}

//Part 3: double
        let nilEntryDict : Dictionary<String, Double>? = nil
func add (p1: Dictionary<String, Double>?, p2: Dictionary<String, Double>?) -> Dictionary<String, Double>? {
    if p1 != nil && p2 != nil {
        if p1!["x"] != nil && p1!["y"] != nil && p2!["x"] != nil && p2!["y"] != nil {
            return [
                "x" : p1!["x"]! + p2!["x"]!,
                "y" : p1!["y"]! + p2!["y"]!
            ]
        } else {
            return nil
        }
    } else {
        return nil
    }
}

func subtract (p1: Dictionary<String, Double>?, p2: Dictionary<String, Double>?) -> Dictionary<String, Double>? {
    if p1 != nil && p2 != nil {
        if p1!["x"] != nil && p1!["y"] != nil && p2!["x"] != nil && p2!["y"] != nil {
            return [
                "x" : p1!["x"]! - p2!["x"]!,
                "y" : p1!["y"]! - p2!["y"]!
            ]
        } else {
            return nil
        }
    } else {
        return nil
    }
}
