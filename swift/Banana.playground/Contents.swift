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
shoppingList[10] = "too big?"
var strangeList = ["catfish", 33, 22.2]
strangeList[1]

//07

var emptyArray = [String]()
emptyArray.append("Hello")
emptyArray.append(33) //
let emptyDicionnary = [String : Float]()

//07.bis

var emptyArray2 = []
emptyArray2.append(33) //
emptyArray2.append("Hello")



