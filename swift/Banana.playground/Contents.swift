//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//01

print("Hello world!")


//02 variable

var myVariable = 42
myVariable = 50
var myOtherVariable :Double

//03 constante

let implicitInteger = 70
let impliciteDouble = 70.0
let explicitDouble :Double = 70

//04 "6".toInt()!

let label = "The width is "
let width = 94
let widthLabel = label + String(width)

//05

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruits = "I have \(apples + oranges) fruits"

//06

var shoppingList = ["catfish", "water", "tulips"]
shoppingList[1] = "bottle of water" // 0 based indice
var occupations = [
    "Malcom" : "Captain",
    "Kaylee" : "Mechanic" ]

occupations["Jayne"] = "Public relations"
//shoppingList[10] = "too big?"
var strangeList = ["catfish", 33, 22.2]
strangeList[1]

//07

var emptyArray = [String]()
emptyArray.append("Hello")
//emptyArray.append(33) //
let emptyDicionnary = [String : Float]()

//07.bis

var emptyArray2 = []
//emptyArray2.append(33) //
//emptyArray2.append("Hello")


//08
//shoppingList[]
//occupations[:]


//09 if else

var teamScore = 0
var score = 0

if score > 50 {
teamScore += 3
}else if score < 0{
    
    teamScore -= 0
}else{
    teamScore += 1
}

//10 for

var individualScore = [1, 5, 8]

for score in individualScore {
    
    score * 2
}

//11 optional & affectation

let individualScores = [75, 43, 103, 87, 12]
var teamScores = 0
for score in individualScores{
    if score > 50{
        teamScore += 3
    }else {
        teamScore += 1
    }
}
print(teamScore)


//12 

var optionalString: String? = "Hello"
print(optionalString == nil)
var optionalName: String? = "John Snow" //nil
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

//13

var optionalString1: String? = "Hello"
print(optionalString1 == nil)
var optionalString2: String?
print(optionalString2 == nil)
var optionalString3: String
//print(optionalString3 == nil)

print ("optionalString2: \(optionalString2)")
//print ("optionalString3: + \(optionalString3)")

//14

let vegetable = "red pepper"
var vegetableComment: String
switch vegetable {
    
case "cucumber", "watercress":
    vegetableComment = "That would make a good tea sandwich."
    
case let x where x.hasSuffix("pepper"):
    vegetableComment = "Is it a spicy \(x)?"
    
default:
    vegetableComment = "Everything tastes good in soup."
}

print("result: \(vegetableComment)")

