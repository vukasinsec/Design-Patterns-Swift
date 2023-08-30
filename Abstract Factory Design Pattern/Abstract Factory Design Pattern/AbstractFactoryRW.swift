protocol Order
{
    var orderName: String {get}
    func acceptOrder()
    func prepareOrder()
    func serverOrder()
}

class Pizza : Order
{
    var orderName: String
    
    init(){
        orderName = "Pizza"
        acceptOrder()
        prepareOrder()
        serverOrder()
    }
    
    func acceptOrder() {
        print("Your \(orderName) is accepted.")
    }
    
    func prepareOrder() {
        print("Prepareing your \(orderName)")
    }
    
    func serverOrder() {
        print("Ohh, your delicious \(orderName) is served.")
    }
}

class Pasta : Order
{
    var orderName: String
    
    init(){
        orderName = "Pasta"
        acceptOrder()
        prepareOrder()
        serverOrder()
    }
    
    func acceptOrder() {
        print("Your \(orderName) is accepted.")
    }
    
    func prepareOrder() {
        print("Prepareing your \(orderName)")
    }
    
    func serverOrder() {
        print("Ohh, your delicious \(orderName) is served.")
    }
}

class Burger : Order
{
    var orderName: String
    
    init(){
        orderName = "Burger"
        acceptOrder()
        prepareOrder()
        serverOrder()
    }
    
    func acceptOrder() {
        print("Your \(orderName) is accepted.")
    }
    
    func prepareOrder() {
        print("Prepareing your \(orderName)")
    }
    
    func serverOrder() {
        print("Ohh, your delicious \(orderName) is served.")
    }
}

protocol OrderFactory
{
    func createOrder() -> Order
}
class BurgerTime : OrderFactory
{
    func createOrder() -> Order {
        return Burger()
    }
}
class PastaDeliciousShop : OrderFactory
{
    func createOrder() -> Order {
        return Pasta()
    }
}
class ColosseoPizzeria : OrderFactory
{
    func createOrder() -> Order {
        return Pizza()
    }
}

enum Orders {
    case Pizza,Burger,Pasta
}

class Customer
{
    var customerName: String
    var customerPhone: Int
    var orderFactory: OrderFactory
    var orderItem: Orders
    
    init(customerName: String, customerPhone: Int, orderItem: Orders) {
        self.customerName = customerName
        self.customerPhone = customerPhone
        self.orderItem = orderItem
        
        switch orderItem
        {
        case .Pizza:
                orderFactory = ColosseoPizzeria()
        case .Burger:
                orderFactory = BurgerTime()
        case .Pasta:
                orderFactory = PastaDeliciousShop()
        }
        
    }
    
    func startOrder() -> Order {
        print("Welcome, \(customerName)")
        return orderFactory.createOrder()
    }
    
    
}
