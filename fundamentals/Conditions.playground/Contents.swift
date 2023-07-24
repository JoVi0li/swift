let interval1: ClosedRange<Int> = 10...20
let number = 56

switch number {
case interval1: print("Number is at Interval One")
default: print("Interval not found")
}

let animal: String = "Cat"

switch animal {
case "Dog", "Cat": print("It's a pet")
default: print("It's a savage animal")
}


switch number {
case let odd where odd % 2 == 0: print("Number \(odd) is odd")
default: print("Number \(number) is even")
}


func generateRandomNumber(_ limit: Int) -> Int {
    let randomNumber: Int = Int.random(in: 0...limit)
    return randomNumber
}

print(generateRandomNumber(1000000))

func userPontuation() {
    let question: String = "What's the value of 8 x 2?"
    let correctAnswer: Int = 16
    let userAnswer: Int = 10
    var userPoints: Int = 0
    
    print(question)
    print("User answer: \(userAnswer)")
    
    if userAnswer == correctAnswer {
        userPoints += 1
    } else {
        userPoints -= 1
    }
    
    print("User pontuation: \(userPoints)")
}

userPontuation()
