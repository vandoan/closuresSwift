//: Closures

// This function takes a string and prints it

func printString(aString: String) {
    print("Printing the string passed in: \(aString)")
}

printString("Hi, my name is Pasan.")


// assign hte function we just declared to a constant. Note that we do not add parenteses"()" after the function name. First class citizen and don't need parentheses
let someFunction = printString

someFunction("Hi, look at me")




func PrintInt(number: Int) {
    print("printer hte number passed in ")
}



func displayString(printStringFunc: (String) -> Void) {
    printStringFunc("I'm a function inside another function")
}

displayString(printString)



// Using hte filter function 

let allNumbers = [1,2,3,4,5,6,7,8,9,10]

func isEvenNumber(i: Int) -> Bool {
    return i % 2 == 0
}

let ifEven = isEvenNumber

let evenNumbers = allNumbers.filter(ifEven)




// returning functions


func printerFunction() -> (Int) -> () {
    var runningTotal = 0
    func printInteger(number: Int) {
        runningTotal += 10
        print("The running total is: \(runningTotal)")
    }
    return printInteger
}

let printAndReturnIntegerFunc = printerFunction()

printAndReturnIntegerFunc(2)
printAndReturnIntegerFunc(3)



let runningTotalFunction = printerFunction()
runningTotalFunction(2)


func differenceBetweenNumbers(a: Int, b:Int) -> (Int) {
    return a - b
}


/**
 For this code challenge, let’s define a math operation as a function that
 carries out some work on two integers and returns an integer as well. An
 example is the function below, `differenceBetweenNumbers`, which takes two
 integers and calculates the difference between the numbers. After calculating,
 it returns the difference.
 */


// Enter your code below
func mathOperation(mathOp: (Int, Int) -> Int, a: Int, b: Int) -> Int {
    return mathOp(a, b)
}

let difference = mathOperation(differenceBetweenNumbers, a: 20, b: 11)





//////// filter function


let numbers = [Int](0...50)

// Enter your code below


func isOdd( a: Int ) -> Bool {
    return a % 2 != 0
}

let oddNumbers = numbers.filter(isOdd)














