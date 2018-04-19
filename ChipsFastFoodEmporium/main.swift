//
//  main.swift
//  ChipsFastFoodEmporium
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// INPUT
// Get meal choice
func getMealChoice(withPrompt: String) -> Int {
    
    var choice = 0
    while 1 == 1 {
        
        // Prompt the user
        print(withPrompt, terminator: "")
        
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
        choice = givenInteger
        break
        
    }
    
    // Exit the function
    return choice
}

// Get the burger choice
let burgerChoice = getMealChoice(withPrompt: "Please enter a burger choice: ")
let sideChoice = getMealChoice(withPrompt: "Please enter a side order choice: ")
let drinkChoice = getMealChoice(withPrompt: "Please enter a drink choice: ")
let dessertChoice = getMealChoice(withPrompt: "Please enter a dessert choice: ")

// PROCESS
// Data structure to store calorie counts for burgers
var burgerCalorieCounts = Array(repeating: 0, count: 5)
burgerCalorieCounts[1] = 461 // Cheeseburger
burgerCalorieCounts[2] = 431 // Fishburger
burgerCalorieCounts[3] = 420 // Veggieburger
burgerCalorieCounts[4] = 0   // Nothingburger

// Data structure to store calorie counts for side orders
var sideOrderCalorieCounts = Array(repeating: 0, count: 5)
sideOrderCalorieCounts[1] = 100 // Fries
sideOrderCalorieCounts[2] = 57  // Baked potato
sideOrderCalorieCounts[3] = 70  // Chef salad
sideOrderCalorieCounts[4] = 0   // Nothing for side order

// Data structure to store calorie counts for drinks
var drinkCaloriesCounts = Array(repeating: 0, count: 5)
drinkCaloriesCounts[1] = 130 // Soft drink
drinkCaloriesCounts[2] = 160 // Orange juice
drinkCaloriesCounts[3] = 118 // Milk
drinkCaloriesCounts[4] = 0   // Nothing for drink

// Data structure to store calorie counts for desserts
var dessertCalorieCounts = Array(repeating: 0, count: 5)
dessertCalorieCounts[1] = 167   // Apple pie
dessertCalorieCounts[2] = 266   // Sundae
dessertCalorieCounts[3] = 75    // Fruit cup
dessertCalorieCounts[4] = 0     // Nothing for dessert

// Calculate total calories
let totalCalories = burgerCalorieCounts[burgerChoice] +
                    sideOrderCalorieCounts[sideChoice] +
                    drinkCaloriesCounts[drinkChoice] +
                    dessertCalorieCounts[dessertChoice]

// OUTPUT
// Report results to the user here
print("Your total Calorie count is \(totalCalories).")
