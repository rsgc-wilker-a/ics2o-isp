import UIKit

var equation = "a + 13 = 87"

//( Following lines of code are setup
var word = ""
var count = 1

var stringA = ""
var stringB = ""
var stringC = ""
var stringD = ""
var stringE = ""
var stringF = ""
//)

//( Following lines of code seperate the strings
for character in equation.characters {
    if character == " " {
        if count == 1{stringA = word}
        if count == 2{stringB = word}
        if count == 3{stringC = word}
        if count == 4{stringD = word}
        if count == 5{stringE = word}
        count = count + 1
        word = ""
    } else {
        word += "\(character)"
    }
}
                       stringF = word
print(stringA)
print(stringB)
print(stringC)
print(stringD)
print(stringE)
print(stringF)

//)

//( This will sort everything to either the left or right of the "=" sign
var foundEqual = 0


//)

//( Following lines of code turn strings into doubles with new variable names
var doubleC = 0.0
doubleC = Double(stringC)!

var doubleZ = 0.0
doubleZ = Double(stringF)!
//)

//( Setup
var lastDouble = 0.0
//)

//( Does the mathematical equations dependant on what sign is given
if stringB == "+"{lastDouble = doubleZ - doubleC}
if stringB == "-"{lastDouble = doubleZ + doubleC}
if stringB == "*"{lastDouble = doubleZ / doubleC}
if stringB == "/"{lastDouble = doubleZ * doubleC}
//)

//( Turns the answer into a string
var lastString = ""
lastString = String(lastDouble)
//)

//( What the user sees
var finalString = ""
finalString = "\(stringA) \(stringD) \(lastString)"
//)

print(finalString)
