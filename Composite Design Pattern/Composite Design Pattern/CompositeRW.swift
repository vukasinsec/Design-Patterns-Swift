protocol Payee {
  var name: String { get }
  var bonusAmount: Double { get }
  func receive(bonus: Double)
}

class Employee: Payee {
  // 1
  private var _name: String
  private var _bonusAmount: Double = 0
  
  var name: String { return _name }
  var bonusAmount: Double { return _bonusAmount }
  
  init(name: String) {
    self._name = name
  }
  
  // 2
  func receive(bonus: Double) {
    _bonusAmount += bonus
  }
}

class Department: Payee {
    private var _name: String
    // 1
    private var _bonusAmount: Double {
        get {
            var bonus = 0.0
            
            for subunit in subunits {
                bonus += subunit.bonusAmount
            }
            return bonus
        }
        set {
            let splitCount = Double(subunits.count)
            let splitBonus = newValue / splitCount
            for subunit in subunits {
                subunit.receive(bonus: splitBonus)
            }
        }
    }
    // 2
    private let subunits: [Payee]
    
    var name: String { return _name }
    var bonusAmount: Double { return _bonusAmount }
    
    init(name: String, subunits: [Payee] = []) {
        self._name = name
        self.subunits = subunits
    }
    
    func receive(bonus: Double) {
        _bonusAmount += bonus
    }
    
}
