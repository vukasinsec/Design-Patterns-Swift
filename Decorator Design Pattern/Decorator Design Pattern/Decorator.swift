protocol Component
{
    func operation() -> Void
}

class ConcreteComponent : Component
{
    
    func operation() {
        print("ConcreteComponent.operation()")
    }
    
}

protocol Decorator : Component
{
    
    var component: Component { get}
    
}

class ConcreteDecoratorA: Decorator {
    
    let component: Component
    
    init(component: Component) {
        self.component = component
    }
    
    func operation() {
        component.operation()
        print("+")
        print("----> ConcreteDecoratorA.operation()")
    }
    
    
    
}

class ConcreteDecoratorB: Component {
    
    let component: Component
    
    init(component: Component) {
        self.component = component
    }
    
    func operation() {
        component.operation()
        print("+")
        print("----> ConcreteDecoratorB.operation()")
    }
    
}

