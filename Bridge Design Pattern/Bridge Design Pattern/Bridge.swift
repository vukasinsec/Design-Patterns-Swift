class Abstraction
{
    var implementor: Implementor
    init(implementor: Implementor) {
        self.implementor = implementor
    }
    
    func operation() -> String {
        let operation = implementor.operationImplementation()
        return "Abstraction: Base operation with:\n" + operation
    }
}

class RefinedAbstraction : Abstraction
{
    override func operation() -> String {
        let operation = implementor.operationImplementation()
        return "ExtendedAbstraction: Extended operation with:\n" + operation
    }
}

protocol Implementor
{
    func operationImplementation() -> String
}

class ConcreteImplementator1 : Implementor
{
    func operationImplementation() -> String {
        return "ConcreteImplementator1.operationImplementation()"
    }
}

class ConcreteImplementator2 : Implementor
{
    func operationImplementation() -> String {
        return "ConcreteImplementator2.operationImplementation()"
    }
    
}


class Client
{
    static func run(abstraction: Abstraction) {
            print(abstraction.operation())
    }
    
}
