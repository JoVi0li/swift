struct AccountStruct  {
    var balance: Double = 0.0
    let name: String
    
    mutating func withdraw(_ value: Double) {
        guard value > 0 else { return }
        guard balance >= value else { return }
        balance -= value
    }
    
    mutating func deposit (_ value: Double) {
        guard value > 0 else { return }
        balance += value
    }
}

var myAccountStruct = AccountStruct(name: "João Vitor")

print(myAccountStruct.balance)

class AccountClass {
    var balance: Double
    let name: String
    
    init(name: String) {
        balance = 0.0
        self.name = name
    }
    
    func withdraw(_ value: Double) {
        guard value > 0 else { return }
        guard balance >= value else { return }
        balance -= value
    }
    
    func deposit (_ value: Double) {
        guard value > 0 else { return }
        balance += value
    }
    
}

var myAccountClass = AccountClass(name: "João Vitor")

print(myAccountClass.balance)
