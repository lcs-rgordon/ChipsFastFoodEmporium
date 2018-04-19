//
//  main.swift
//  ChipsFastFoodEmporium
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// INPUT
// Collect and filter user input here
var burgerChoice = 0
while 1 == 1 {
    
    // Prompt the user
    print("Please enter a burger choice: ", terminator: "")
    
    // Test #1: Get input and make sure it is not nil
    guard let givenInput = readLine() else {
        
        // Prompt again when input is nil
        continue
    }
    
    // Test #2: Can it be an integer?
    guard let givenInteger = Int(givenInput) else {
        
        // Prompt again when input cannot be made into an integer
        continue
    }
    
    // Test #3: Is it in the acceptable range of 1 to 4?
    if givenInteger < 1 || givenInteger > 4 {
        
        // Prompt again when too low or too hight
        continue
    }
    
    // If we got here, input is valid
    burgerChoice = givenInteger
    break
    
}

// PROCESS
// Data structures to store calorie counts for various choices
var burgerCalorieCounts = Array(repeating: 0, count: 5)
burgerCalorieCounts[1] = 461 // Cheeseburger
burgerCalorieCounts[2] = 431 // Fishburger
burgerCalorieCounts[3] = 420 // Veggieburger
burgerCalorieCounts[4] = 0   // Nothingburger

// Calculate total calories
let totalCalories = burgerCalorieCounts[burgerChoice]

// OUTPUT
// Report results to the user here
print("Your total Calorie count is \(totalCalories).")
