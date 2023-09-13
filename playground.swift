import Foundation

let x = 5
let y = 0.5
var operation = "-" 

func plus () -> String {
    return String(Double(x)+Double(y))
}

func minus () -> String {
    return String(Double(x)-Double(y))
}

func divide () -> String {
    if (y != 0) {
        return String(Double(x)/Double(y))
    }
    return "Cannot divide by zero"
}

func multiply () -> String {
    return String(Double(x)*Double(y))
}

func calculate () {
    var result = ""
    switch operation {
    case "-":
        result = minus()
    case "+":
        result = plus()
    case "/":
        result = divide()
    case "*":
        result = multiply()
    default:
        fatalError("Unsupported")
    }
    print(result)
}
calculate()
