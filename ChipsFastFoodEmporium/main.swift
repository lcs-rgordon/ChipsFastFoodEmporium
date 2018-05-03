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

// Get all the choices
print("Welcome to Chip's Fast Food Emporium")
let burgerChoice = getMealChoice(withPrompt: "Please enter a burger choice: ")
let sideChoice = getMealChoice(withPrompt: "Please enter a side order choice: ")
let drinkChoice = getMealChoice(withPrompt: "Please enter a drink choice: ")
let dessertChoice = getMealChoice(withPrompt: "Please enter a dessert choice: ")

// PROCESS
// Data structure to store calorie counts for burgers
var burgerCalorieCounts : [Int : Int] = [:]
burgerCalorieCounts[1] = 461 // Cheeseburger
burgerCalorieCounts[2] = 431 // Fishburger
burgerCalorieCounts[3] = 420 // Veggieburger
burgerCalorieCounts[4] = 0   // Nothingburger

// Data structure to store calorie counts for side orders
var sideOrderCalorieCounts : [Int : Int] = [:]
sideOrderCalorieCounts[1] = 100 // Fries
sideOrderCalorieCounts[2] = 57  // Baked potato
sideOrderCalorieCounts[3] = 70  // Chef salad
sideOrderCalorieCounts[4] = 0   // Nothing for side order

// Data structure to store calorie counts for drinks
var drinkCaloriesCounts : [Int : Int] = [:]
drinkCaloriesCounts[1] = 130 // Soft drink
drinkCaloriesCounts[2] = 160 // Orange juice
drinkCaloriesCounts[3] = 118 // Milk
drinkCaloriesCounts[4] = 0   // Nothing for drink

// Data structure to store calorie counts for desserts
var dessertCalorieCounts : [Int : Int] = [:]
dessertCalorieCounts[1] = 167   // Apple pie
dessertCalorieCounts[2] = 266   // Sundae
dessertCalorieCounts[3] = 75    // Fruit cup
dessertCalorieCounts[4] = 0     // Nothing for dessert

// Calculate total calories
// It's OK to force unwrap the values, because we know they exist
// (we just added the values for all possible keys to the dictionaries)
let totalCalories = burgerCalorieCounts[burgerChoice]! +
                    sideOrderCalorieCounts[sideChoice]! +
                    drinkCaloriesCounts[drinkChoice]! +
                    dessertCalorieCounts[dessertChoice]!

// OUTPUT
// Report results to the user here
print("Your total Calorie count is \(totalCalories).")
