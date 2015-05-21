import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    // WORK HERE
    var returnCheeseString = ""
    
    returnCheeseString = "My favorite cheese is \(cheese)."
    //returnCheeseString = cheese + cheese + "|"
    
    return returnCheeseString
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."

/*

Arrays & Dictionaries

*/

let numberArray = [1, 2, 3, 4]
// Add 5 to this array
// WORK HERE

var newArray = numberArray
newArray.append(5)

let numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
// WORK HERE
var newNumberDictionary = numberDictionary
newNumberDictionary[5] = "five"

newNumberDictionary

/*

Loops

*/

let a = "this"
let b = "something \(a) something else"
let c = a
let d = "a"


// Use a closed range loop to print 1 - 10, inclusively
// WORK HERE
//for diagonAlleyShopNumber in 100...200

for i in 1...10 {
    print(i)
    
}

// Use a half-closed range loop to print 1 - 10, inclusively
// WORK HERE

for i in 1..<11 {
    print(i)
    
}



let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    // WORK HERE
    
    var favoriteDrinksArray : Array<String> = []
    for i in 0..<characters.count {
        let charactersFavoriteDrink = characters[i]["favorite drink"]
        
        favoriteDrinksArray.append(charactersFavoriteDrink!)
/*
        if let favDrink = charactersFavoriteDrink {
            favoriteDrinksArray.append(favDrink)
            
        }
        */
        
    }
    
    return favoriteDrinksArray
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

// WORK HERE - make your function and pass `strings` in

//loop in array, add to string

func stringFromArray(theStrings:Array<String>) -> String {
    // blank paper
    var resultString = ""
    
    // for each input string
    for string in strings {
        // add the current string and a semicolon to the result
        resultString = resultString + ("\(string);")
    }
   
    resultString.removeAtIndex(resultString.endIndex.predecessor())
    return resultString
}


let expectedOutput = "milk;eggs;bread;challah"
let actualOutput = stringFromArray(strings)

if(actualOutput == expectedOutput) {
    print("Good")
}



/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// Use a closure to sort this array alphabetically
// WORK HERE

let cerealSortedInAlphabeticalOrder = sorted(cerealArray, <)
