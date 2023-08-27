let name: String = "Steve"
var lastName: String? = "Jobs"

print("Nome completo: \(name) \(lastName ?? "Wozniak")")

if let lastName {
    print ("Nome completo 2: \(name) \(lastName)")
}
