final class Singleton {
    
    static var instance : Singleton?
    
    // private constructor
    private init(){}
    
    static func Instance() -> Singleton {
        
        if instance == nil {
            instance = Singleton()
        }
        
        return instance!
    }
    
    
    
}


