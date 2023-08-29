func main()
{

//    var component : Component = ConcreteDecoratorA(component: ConcreteDecoratorB(component: ConcreteComponent()))
//    component.operation()
    
    var bev1 : Beverage = Milk(beverage: Whip(beverage: DarkRoast()))
    print(bev1.description,bev1.cost())

    bev1 = Soy(beverage: Milk(beverage: Milk(beverage: Espresso())))
    print(bev1.description,bev1.cost())
    
    
}
main()
