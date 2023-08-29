func main()
{
    
    let factory1: AbstractFactory = ConcreteFactory1()
    let c1 = Client(factory: factory1)
    c1.run()

    // Abstract factory #2
    let factory2: AbstractFactory = ConcreteFactory2()
    let c2 = Client(factory: factory2)
    c2.run()
    
    
}

main()
