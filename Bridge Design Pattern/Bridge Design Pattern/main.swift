func main()
{
    
    let implementation = ConcreteImplementator1()
    Client.run(abstraction: Abstraction(implementor: implementation))
    
}

main()
