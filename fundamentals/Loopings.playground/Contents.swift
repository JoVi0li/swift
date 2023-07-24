func printOddNumber(_ numbers: ClosedRange<Int>) {
    for number in numbers {
        if number % 2 == 0 {
            print(number)
        }
    }
}


print(printOddNumber(0...1000)) 
