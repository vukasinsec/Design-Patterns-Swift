
protocol Observer {
    func update()
}


protocol Subject {
    func RegisterObserver(_ observer: Observer)
    func RemoveObjserver(_ observer: Observer)
    func NotifyObservers()
    
}

protocol DisplayElement{
    func Display()
}

class ConcreteSubject : Subject
{
    var observers : [Observer] = []
    var subjectState : String = ""
    
    func RegisterObserver(_ observer: Observer) {
        observers.append(observer)
    }
    
    func RemoveObjserver(_ observer: Observer) {
        if let index = observers.firstIndex(where: { $0 as AnyObject === observer as AnyObject }) {
            observers.remove(at: index)
        }
    }
    
    func NotifyObservers() {
        for observer in observers {
            if let observer = observer as? Observer {
                observer.update()
            }
        }
    }
    
}

class ConcreteObserver : Observer {
    
    let name: String
    var observerState: String = ""
    var subject: ConcreteSubject?
    
    init(subject: ConcreteSubject,name : String)
    {
        self.subject = subject
        self.name = name
        subject.RegisterObserver(self)
    }
    
    
    func update() {
        if let subject = subject {
            observerState = subject.subjectState
            print("Observer \(name)'s new state is \(observerState)")
        }
    }
}

       
    

