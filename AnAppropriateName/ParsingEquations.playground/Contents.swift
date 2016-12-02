//: Playground - noun: a place where people can play

import UIKit

var equation = "x + 4 = 10"

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

if stringC == "0"{integerC = 0}
if stringC == "1"{integerC = 1}
if stringC == "2"{integerC = 2}
if stringC == "3"{integerC = 3}
if stringC == "4"{integerC = 4}
if stringC == "5"{integerC = 5}
if stringC == "6"{integerC = 6}
if stringC == "7"{integerC = 7}
if stringC == "8"{integerC = 8}
if stringC == "9"{integerC = 9}
if stringC == "10"{integerC = 10}

var integerE = 0

if stringE == "0"{integerE = 0}
if stringE == "1"{integerE = 1}
if stringE == "2"{integerE = 2}
if stringE == "3"{integerE = 3}
if stringE == "4"{integerE = 4}
if stringE == "5"{integerE = 5}
if stringE == "6"{integerE = 6}
if stringE == "7"{integerE = 7}
if stringE == "8"{integerE = 8}
if stringE == "9"{integerE = 9}
if stringE == "10"{integerE = 10}

var lastInt = 0

if stringB == "+"{lastInt = integerE - integerC}
if stringB == "-"{lastInt = integerE + integerC}

print(lastInt)

var lastString = ""

if lastInt == 0{lastString = "0"}
if lastInt == 1{lastString = "1"}
if lastInt == 2{lastString = "2"}
if lastInt == 3{lastString = "3"}
if lastInt == 4{lastString = "4"}
if lastInt == 5{lastString = "5"}
if lastInt == 6{lastString = "6"}
if lastInt == 7{lastString = "7"}
if lastInt == 8{lastString = "8"}
if lastInt == 9{lastString = "9"}
if lastInt == 10{lastString = "10"}

var finalString = ""

finalString = "\(stringA) \(stringD) \(lastString)"
