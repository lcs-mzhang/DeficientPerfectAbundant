//
//  main.swift
//  RotatingLetters
//
//  Created by Gordon, Russell on 2018-04-06.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// Get the user input
var rawInput = readLine()
var sumOfFactors = 0

guard let input = rawInput else {
    //error
    print("input numbers please")
    exit(9)
}

guard let integerInput = Int(rawInput!) else {
    exit(9)
}

if integerInput == 1 {
    print("Deficient Number")
    exit(9)
}

for i in 1...integerInput-1 {
    if integerInput%i == 0 {
        sumOfFactors += i
    }
}

print("The sum of factors is \(sumOfFactors)")

if integerInput < sumOfFactors {
    print("Abundant")
}
else if integerInput > sumOfFactors {
    print("Deficient")
}
else if internalScrapErr == sumOfFactors {
    print("Perfect")
}
