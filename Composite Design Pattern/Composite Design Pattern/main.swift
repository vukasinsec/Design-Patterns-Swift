
func main()
{
    
//    let root: Composite = Composite(name: "root")
//
//    root.Add(c: Leaf(name: "Leaf A"))
//    root.Add(c: Leaf(name: "Leaf B"))
//
//    let composite: Composite = Composite(name: "Composite X")
//    composite.Add(c: Leaf(name: "Leaf XA"))
//    composite.Add(c: Leaf(name: "Leaf XB"))
//
//    root.Add(c: composite)
//    root.Add(c: Leaf(name: "Leaf C"))
//
//
//    let leaf : Leaf = Leaf(name: "Leaf D")
//    root.Add(c: leaf)
//    root.Remove(c: leaf)
//
//    root.Display(depth: 1)
    
    
    // 1
    let joan = Employee(name: "Joan")
    let joann : Employee = Employee(name: "Joann")
    let tom = Employee(name: "Tom")
    let cleo = Employee(name: "Cleo")
    let alex = Employee(name: "Alex")

    // 2
    let graphicDesignDepartment = Department(name: "Graphic Design", subunits: [cleo, alex])
    let marketingDepartment = Department(name: "Marketing", subunits: [joan, tom, graphicDesignDepartment])

    // 3
    marketingDepartment.receive(bonus: 1000)

    
    
}
main()
