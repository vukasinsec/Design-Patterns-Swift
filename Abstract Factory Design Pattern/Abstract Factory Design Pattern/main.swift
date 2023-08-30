func main()
{
    
//    let factory1: AbstractFactory = ConcreteFactory1()
//    let c1 = Client(factory: factory1)
//    c1.run()
//
//    let factory2: AbstractFactory = ConcreteFactory2()
//    let c2 = Client(factory: factory2)
//    c2.run()
    
    
    var customer1 = Customer(customerName: "Vukasin", customerPhone: 0681224122, orderItem: .Burger)
    customer1.startOrder()
    print("\n")
    var customer2 = Customer(customerName: "Nikola", customerPhone: 28185215, orderItem: .Pasta)
    customer2.startOrder()
    
    
}

main()
