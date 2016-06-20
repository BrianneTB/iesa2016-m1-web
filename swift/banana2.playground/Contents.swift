//23

class Shape {
    
    var sidesCount = 0
    
    func getInfo() -> String {
        
        return "A shape with \(sidesCount) sides."
    }
}
var shapes = Shape()


//24

var shape = Shape()

shape.sidesCount = 7

var shapeDescription = shape.getInfo()


//25

class NamedShape {
    
    var sidesCount: Int = 0
    var name: String
    init(name: String) { self.name = name }
    func getInfo() -> String { return "\(sidesCount) sides" }
    
}
var carre = NamedShape(name: "drapeau")


//26 

class Square : NamedShape {
    var sideLength: Double
    init(length: Double, name: String){
        self.sideLength = length
        super.init(name: name)
        sidesCount = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func getInfo() -> String {
        return "Square: L=\(sideLength)."
    }
}
let s = Square(length: 5.2, name: "myS")
s.area
s.getInfo()


//27


enum Sexe: Int{
    case Male = 0
    case Female = 1
    case Unknow = 2
}

class Person {
    var name: String = ""
    var age: Int = 0
    var sexe: Sexe = Sexe.Unknow
    
    func getName() -> String{
        return self.name
    }
    func getAge() -> Int{
        return self.age
    }
    func setName(newName: String) {
        self.name = newName
    }
    func setAge(newAge: Int) {
        self.age = newAge
    }
    
    func getSexe() -> Sexe{
        return self.sexe
    }
    
    func setSexe(newSexe: Sexe) {
        self.sexe = newSexe
    }
    
}

var riri = Person()
riri.setName("riri")
riri.getName()

var annee = Person()
annee.setAge(24)
annee.getAge()

var boubou = Person()
boubou.setName("boubou")
boubou.getName()
boubou.sexe = Sexe.Female
boubou.sexe


class EquilateralTriangle: NamedShape {
   var sideLength: Double = 0.0
    init(length: Double, name: String) {
        self.sideLength = length
        super.init(name: name)
        sidesCount = 3
        
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func getInfo() -> String {
        return "Length=\(sideLength)"
    }
}
var triangle = EquilateralTriangle(length: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)


//29

//class Counter {
//    var count: Int = 0
//    func incrementBy(amount: Int, numberOfTimes times: Int) {
//        count += amount * times
//        
//    }
//}
// var counter = Counter()
//counter.incrementBy(2, numberOfTimes: 7)
//
//
//class TriangleAndQuare {
//    var triangle: EquilateralTriangle { willSet { square.sideLength = newValue.sideLength } }
//    var square: Square { willSet { triangle.sideLength = newValue.sideLength } }
//    init(size: Double, name: String) {
////        square = Square(sideLength: size, name: name)
//        triangle = EquilateralTriangle(sideLength: size, name:  name)
//    }
//}
//
//var triangleAndSquare


//31


enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Ninr, Ten
    case Jack, Queen, King
    func getInfo() -> String {
        switch self {
        case .Ace: return "ace"
        case .Jack: return "jack"
        case .Queen: return "queen"
        case .King: return "king"
        default: return
            String(self.rawValue)
        }
    }
}


let ace = Rank.Ace
let aceRawValue = ace.rawValue


//34

enum Suit: Int {
    case Coeur
    case Trefle
    case Carreau
    case Pique
    func getInfo() -> String {
        return String(self)
    }
    
}

struct Card  {
    var rank: Rank
    var suit: Suit
    
    func simpleDescription() -> String {
        return "The \(rank.getInfo()) of \(suit.getInfo())"
    }
}

let threeOfSpades = Card(rank: .Three, suit: .Pique)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()


// 36 protocole


//protocol Personnage {
//    
//    
//    func deplacer()
//    
//    
//    var humain = marcher
//    
//}











