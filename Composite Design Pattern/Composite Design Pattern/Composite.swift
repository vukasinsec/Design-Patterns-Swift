
protocol Component
{
    
    var name: String {get}
    
    func Add(c: Component)
    func Remove(c: Component )
    func Display(depth: Int)
    
}

public class Composite : Component
{
    
    private var children: [Component] = []
    
    var _name: String
    init(name: String)
    {
        self._name = name
    }
    
    var name: String {
        return _name
    }
    
    func Add(c: Component) {
        children.append(c)
    }
    
    func Remove(c: Component) {
        if let index = children.firstIndex(where: {$0 as AnyObject === c as AnyObject}){
            children.remove(at: index)
        }
    }
    
    func Display(depth: Int) {
        print(String(repeating: "-", count: depth) + name)

        // Recursive display of child components
        for component in children {
            component.Display(depth: depth + 2)
        }
    }
    
    
    
}


class Leaf : Component
{
    var name: String
    {
        return _name;
    }
    
    var _name: String
    
    init(name: String)
    {
        self._name=name;
    }
    
    func Add(c: Component) {
        print("Cannot add to a leaf")
    }
    
    func Remove(c: Component) {
        print("Cannot remove from a leaf")
    }
    
    func Display(depth: Int) {
        print("-" + String(depth) + _name)
    }
    
}
