func main()
{
    
//    let contextA : Context = Context(strategy: ConcreteStrategyA())
//    contextA.ContextInterface()
//
//    let contextB : Context = Context(strategy: ConcreteStrategyB())
//    contextB.ContextInterface()
    
    let soliderPush : Solider = Solider(workout: PushProgram())
    soliderPush.train()
    
    
    let soliderLeg : Solider = Solider(workout: LegProgram())
    soliderLeg.train()
    
    let soliderPull : Solider = Solider(workout: PullProgram())
    soliderPull.train()
}
main()
