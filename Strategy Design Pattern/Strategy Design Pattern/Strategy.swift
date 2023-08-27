protocol Strategy {
    func AlgorithmInterface() -> Void
}

class ConcreteStrategyA : Strategy
{
    func AlgorithmInterface() {
        print("Called ConcreteStrategyA.AlgorithmInterface()")
    }
}

class ConcreteStrategyB : Strategy
{
    func AlgorithmInterface() {
        print("Called ConcreteStrategyB.AlgorithmInterface()")
    }
}

class Context
{
    
    var strategy : Strategy
    init(strategy: Strategy) {
        self.strategy = strategy
    }
    
    public func ContextInterface() {
        strategy.AlgorithmInterface()
    }
    
}
