
class Target {
    func doSomething() {
        print("Target class doing something..")
    }
}

class Adaptee
{
    func specificRequest() {
        print("Adaptee class is calling specific request..")
    }
}

class Adapter : Target {
    
    private let adaptee : Adaptee
    
    internal init(adaptee : Adaptee) {
        self.adaptee = adaptee;
    }
    
    override func doSomething() {
        // Here it is possible to do some other work first
        // and only then call SpecificRequest
        
        adaptee.specificRequest();
    }
    
}


func main() {
    
    let target : Target = Adapter(adaptee: Adaptee())
    target.doSomething()
    
}
main()
