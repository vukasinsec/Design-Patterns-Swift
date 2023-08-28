class SubSystemOne {
    
    public func MethodOne(){
        print("SubSystemOne method");
    }
    
}

class SubSystemTwo {
    public func methodTwo(){
        print("SubSystemTwo method")
    }
}

class SubSystemThree {
    public func methodThree(){
        print("SubSystemThree method")
    }
}

class SubSystemFour {
    func methodFour() {
        print("SubSystemFour method")
    }
}

class Facade {
    
    var one : SubSystemOne
    var two : SubSystemTwo
    var three : SubSystemThree
    var four : SubSystemFour
    
    init(one: SubSystemOne, two: SubSystemTwo, three: SubSystemThree, four: SubSystemFour) {
        self.one = one
        self.two = two
        self.three = three
        self.four = four
    }
    
    func MethodA() {
        print("\nMethodA() --- ")
        one.MethodOne()
        two.methodTwo()
        three.methodThree()
        four.methodFour()
    }
    
    func methodB() {
        print("\nMethodB() --- ")
        two.methodTwo()
        three.methodThree()
    }
    
    
}


func main() {
    
    let facde : Facade = Facade(one: SubSystemOne(), two: SubSystemTwo(), three: SubSystemThree(), four: SubSystemFour())
    facde.MethodA()
    facde.methodB()
    
    
}

main()
