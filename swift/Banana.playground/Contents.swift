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


//12 optionnal

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

//14 switch case

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


//15 while and repeat

var n = 2
while n < 100 { n = n * 2 }
print(n)

var m = 2
repeat { m = m * 2 } while m < 100
print(m)


//16

var firstForLoop = 0
for i in 0..<4 { firstForLoop += i }
print(firstForLoop)

var secondForLoop = 0
for i in 0 ..< 4 { secondForLoop += i }
print(secondForLoop)

//14

func greet(name: String, day: String) -> Void {
    "Hello \(name), today is \(day)."
}

greet("Bob", day: "Tuesday")


//15 tuple

let min = 10
let max = 20
let value = 15
var range = (value, min, max)

range.1


//16

func greet2(name: String, day: String) -> (a: String, b: String , c: String) {
    return (name, day, "Hello \(name), today is \(day).")
}

var blob = greet2("Bob", day: "Tuesday")
blob.a


//17

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    
    var min = scores[0]
    var max = scores[0]
   var sum = 0
for score in scores {
    if score > max { max = score } else if score < min { min = score }
    sum += score
}
return (min, max, sum)
}
let statistics = calculateStatistics([5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.2)


//18 arguments variables

func sum0f(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers { sum += number }
    return sum
}
sum0f()
sum0f(42, 597, 12)


//19 nested functions

func returnFifteen() -> Int {
    var y = 10
    func add() { y += 5 }
    add()
    return y
}
returnFifteen()

//20 closure

var numbers = [1, 2 ,3]
numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
})


var prenom = ["balou", "bob", "trigrou"]
prenom.map({
    (nom: String) -> String in
    return "Bonjour \(nom)"
})


var people = [(name: "Balou", age: 24)]
people.map({
    (person: (String, Int)) -> Int in
    return person.1
})



let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)










