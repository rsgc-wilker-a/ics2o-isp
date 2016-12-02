//: Playground - noun: a place where people can play

import UIKit

var equation = "x + 422 = 10"

var word = ""
var count = 1

var stringA = ""
var stringB = ""
var stringC = ""
var stringD = ""
var stringE = ""

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

print(stringA)
print(stringB)
print(stringC)
print(stringD)
print(stringE)

var integerC = 0

integerC = Int(stringC)!

print(integerC)

var integerE = 0

integerE = Int(stringE)!

print(integerE)

var lastInt = 0

if stringB == "+"{lastInt = integerE - integerC}
if stringB == "-"{lastInt = integerE + integerC}

print(lastInt)

var lastString = ""

lastString = String(lastInt)

print(lastString)

var finalString = ""

finalString = "\(stringA) \(stringD) \(lastString)"
