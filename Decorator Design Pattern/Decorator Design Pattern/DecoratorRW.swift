protocol Beverage {
    var description: String { get }
    func cost() -> Float
}


class HouseBlend: Beverage {
    var description: String = "House Blend"
    func cost() -> Float {
        return 1.99
    }
}

class DarkRoast: Beverage {
    var description: String = "Dark Roast"
    func cost() -> Float {
        return 1.49
    }
}

class Espresso: Beverage {
    var description: String = "Espresso"
    func cost() -> Float {
        return 2.49
    }
}

protocol CondimentDecorator: Beverage
{
    var beverage: Beverage{get}
}

class Mocha: CondimentDecorator
{
    let beverage: Beverage
    var description: String {
        return beverage.description + ", Mocha"
    }
    
    init(beverage: Beverage)
    {
        self.beverage = beverage
    }
    
    func cost() -> Float {
        return 0.2 + beverage.cost()
    }
    
}

class Whip : CondimentDecorator
{
    let beverage: Beverage
    var description: String{
        return beverage.description + ", Whip"
    }
    
    init(beverage: Beverage)
    {
        self.beverage = beverage
    }
    func cost() -> Float {
        return 0.09 + beverage.cost()
    }
    
}

class Soy: CondimentDecorator {
    let beverage: Beverage
    var description: String {
        return beverage.description + ", Soy"
    }
    
    init(beverage: Beverage) {
        self.beverage = beverage
    }
    
    func cost() -> Float {
        return 0.12 + beverage.cost()
    }
}


class Milk: CondimentDecorator {
    let beverage: Beverage
    var description: String {
        return beverage.description + ", Milk"
    }
    
    init(beverage: Beverage) {
        self.beverage = beverage
    }
    
    func cost() -> Float {
        return 0.1 + beverage.cost()
    }
}

