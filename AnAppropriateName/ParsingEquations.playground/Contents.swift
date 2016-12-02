//: Playground - noun: a place where people can play

import UIKit

var equation = "x + 4 = 10"

//( Following lines of code are setup
var word = ""
var count = 1

var stringA = ""
var stringB = ""
var stringC = ""
var stringD = ""
var stringE = ""
//)

//( Following lines of code seperate the strings
for character in equation.characters {
    if character == " " {
        if count == 1{
            stringA = word
        }
        if count == 2{
            stringB = word
        }
        if count == 3{
            stringC = word
        }
        if count == 4{
            stringD = word
        }
        count = count + 1
        word = ""
    } else {
        word += "\(character)"
    }
}
            stringE = word
//)

//( Following lines of code turn strings into integers with new var names
var integerC = 0
integerC = Int(stringC)!

var integerE = 0
integerE = Int(stringE)!
//)

//( Setup
var lastInt = 0
//)

//( Does the mathematical equations dependant on what sign is given
if stringB == "+"{lastInt = integerE - integerC}
if stringB == "-"{lastInt = integerE + integerC}
//)

//( Turns the answer into a string
var lastString = ""
lastString = String(lastInt)
//)

//( What the user sees
var finalString = ""
finalString = "\(stringA) \(stringD) \(lastString)"
//)
