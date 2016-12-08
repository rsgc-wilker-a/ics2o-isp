import UIKit

var equation = "x * 36 = 8934074586"

//( Following lines of code are setup
var word = ""
var count = 1

var stringA = ""
var stringB = ""
var stringC = ""
var stringD = ""
var stringE = ""
var stringF = ""
var stringG = ""
var stringH = ""
var stringI = ""
var stringJ = ""
var stringK = ""
var stringL = ""
var stringM = ""
var stringN = ""
var stringO = ""
var stringP = ""
var stringQ = ""
var stringR = ""
var stringS = ""
var stringT = ""
var stringU = ""
var stringV = ""
var stringW = ""
var stringX = ""
var stringY = ""
var stringZ = ""
//)

//( Following lines of code seperate the strings
for character in equation.characters {
    if character == " " {
        if count == 1{stringA = word}
        if count == 2{stringB = word}
        if count == 3{stringC = word}
        if count == 4{stringD = word}
        if count == 5{stringE = word}
        if count == 6{stringF = word}
        if count == 7{stringG = word}
        if count == 8{stringH = word}
        if count == 9{stringI = word}
        if count == 10{stringJ = word}
        if count == 11{stringK = word}
        if count == 12{stringL = word}
        if count == 13{stringM = word}
        if count == 14{stringN = word}
        if count == 15{stringO = word}
        if count == 16{stringP = word}
        if count == 17{stringQ = word}
        if count == 18{stringR = word}
        if count == 19{stringS = word}
        if count == 20{stringT = word}
        if count == 21{stringU = word}
        if count == 22{stringV = word}
        if count == 23{stringW = word}
        if count == 24{stringX = word}
        if count == 25{stringY = word}
        count = count + 1
        word = ""
    } else {
        word += "\(character)"
    }
}
                       stringZ = word
//)

//( This will sort everything to either the left or right of the "=" sign
var foundEqual = 0


//)

//( Following lines of code turn strings into doubles with new variable names
var doubleC = 0.0
doubleC = Double(stringC)!

var doubleZ = 0.0
doubleZ = Double(stringZ)!
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
