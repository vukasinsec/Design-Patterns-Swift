

protocol AbstractFactory
{
    func CreateProductA() -> AbstractProductA
    func CreateProductB() -> AbstractProductB
}

class ConcreteFactory1 : AbstractFactory
{
    func CreateProductA() -> AbstractProductA {
        return ProductA1()
    }
    func CreateProductB() -> AbstractProductB {
        return ProductB1()
    }
}

class ConcreteFactory2 : AbstractFactory
{
    func CreateProductA() -> AbstractProductA {
        return ProductA2()
    }
    func CreateProductB() -> AbstractProductB {
        return ProductB2()
    }
}

protocol AbstractProductA
{
    func Print()
}

protocol AbstractProductB
{
    func Print()
    func interact(with productA: AbstractProductA)
}

class ProductA1 : AbstractProductA
{
    func Print() {
        print("ProductA1.print()")
    }
}

class ProductB1: AbstractProductB
{
    func Print() {
        print("ProductB1.print()")
    }
    
    
    func interact(with productA: AbstractProductA) {
            print("\(type(of: self)) interacts with \(type(of: productA))")
        }
    
}

class ProductA2: AbstractProductA
{
    func Print() {
        print("ProductA2.print()")
    }
}

class ProductB2 : AbstractProductB
{
    func Print() {
        print("ProductB2.print()")
    }
    func interact(with productA: AbstractProductA) {
            print("\(type(of: self)) interacts with \(type(of: productA))")
    }
}

class Client {
    private var abstractProductA: AbstractProductA
    private var abstractProductB: AbstractProductB

    init(factory: AbstractFactory) {
        abstractProductB = factory.CreateProductB()
        abstractProductA = factory.CreateProductA()
    }

    func run() {
        abstractProductB.interact(with: abstractProductA)
    }
}
