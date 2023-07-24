/// F = C * 9/5 + 32

func celsiusToFahrenheit(_ temp: Double) -> Double {
    let fahre: Double = temp * 9 / 5 + 32
    return fahre
}

print(celsiusToFahrenheit(30))


func calcMedia(_ values: [Double]) -> Double{
    var media: Double = 0
    var total: Double = 0
    
    for value in values {
        total += value
    }
    
    media = total / Double(values.count)
    
    return media
}

print(calcMedia([12.5, 5.0, 12.5]))

