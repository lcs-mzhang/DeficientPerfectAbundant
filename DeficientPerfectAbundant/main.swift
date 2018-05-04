import Foundation

// Get the user input
var sumOfFactors = 0
var givenInteger = 0
var integerInput = 0

//First
//Loop until valid input
while(true) {
    //wait for input + ensure input isn't nil
    guard let givenInput = readLine() else {
        //If we got into this structure, we have nil input
        //So no more tests
        //Just prompt again
        continue
    }
    //is it an integer?
    guard let givenInteger = Int(givenInput) else {
        //If we got into this structre, we have nil input
        //that cannot be made into an integer
        continue //go to top of while loop
    }
    //is the integer in the correct range?
    if givenInteger < 1 || givenInteger > 32500 {
        //if we got into this structure, we have bad input
        continue
    }
    integerInput = givenInteger
    break
} //end of while loop


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

