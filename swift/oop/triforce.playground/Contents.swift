class Instrument {
    
    var type  : String
    var poids : Int = 0
    
    init(name: String) { self.type = name}
    
    func getType() -> String {
        return "test"
    }
    
}


class Guitare : Instrument{
    
    var nbCordes : Int = 0
    
    // override init(name: String) { super.init(name: name)}
    
    
    func getCords() -> Int {
        return self.getCords()
    }
    
    
}

var guitare = Guitare (name: "electrik")

