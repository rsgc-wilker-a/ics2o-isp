//
//  ViewController.swift
//  AnAppropriateName
//
//  Created by Student on 2016-11-24.
//  Copyright © 2016 Andrew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    @IBOutlet weak var enterProblemHere: UITextField!
    
    @IBOutlet weak var answer: UILabel!
    

    // MARK: Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func findForX(_ sender: Any) {
        
        guard let equation = enterProblemHere.text else {
            return
        }
    
        //( The following lines of codes are setup, count is to increase with every spin of the loop, word is an empty string that will hold a value to seperate the 5 strings.
        var word = ""
        var count = 1
        
        var stringA = ""
        var stringB = ""
        var stringC = ""
        var stringD = ""
        var stringE = ""
        var stringT = ""
        //)
        
        //( The following lines of code seperate equation into five strings (or six if the user entered too many)
        for character in equation.characters {
            if character == " " {
                if count == 1{stringA = word}
                if count == 2{stringB = word}
                if count == 3{stringC = word}
                if count == 4{stringD = word}
                if count == 5{stringT = word}
                    count = count + 1
                    word = ""
            } else {
                word += "\(character)"
            }
        }
                              stringE = word
        //)
        
        //( This gives error messages if there are too few or too many characters
        if stringE == ""{
            answer.text = "Error: Too little characters"
        }else if stringT != ""{
            answer.text = "Error: Too many characters"
        }else{
        //)
            
        //( The following lines of code turns the first and second numbers into doubles (ex: 0.1)
        let doubleC = Double(stringC)!
        let doubleE = Double(stringE)!
        //)
        
        //( This is setting up a new variable to use in the end
        var lastDouble = 0.0
        //)
        
        //( This does the mathematical equations dependant on what sign is given, to find the right side of the x =
        if stringB == "+"{lastDouble = doubleE - doubleC}
        if stringB == "-"{lastDouble = doubleE + doubleC}
        if stringB == "*"{lastDouble = doubleE / doubleC}
        if stringB == "/"{lastDouble = doubleE * doubleC}
        if stringB == "root"{lastDouble = pow(doubleE, doubleC)}
        if stringB == "^"{lastDouble = pow(doubleE, 1/doubleC)}
        //)
        
        //( This turns the right side of the x = back into a string to feed back to the user
        let lastString = String(lastDouble)
        //)
        
        //( This part finally gets what we are trying to solve for, the = sign, and what we found x to equal to into answer.text (which is displayed to the user)
        answer.text = "\(stringA) \(stringD) \(lastString)"
        //)
        
        //( This is another error sequence for when x is unsolvable, and gives appropriate errors
        if stringB == "root" && stringC == "0"{
            answer.text = "Error: Cannot solve for an undefined"
        }
        
        if stringB == "^" && stringC == "0" && stringE != "1"{
            answer.text = "Error: Cannot solve due to 0th dimension"
        }
        
        if stringB == "/" && stringC == "0"{
            answer.text = "Error: Cannot solve due to infinite division"
        }
        
        if stringB == "*" && stringC == "0" && stringE != "0"{
            answer.text = "Error: Nothing works, \(stringA) impossible"
        }
        //)
        }
        
    }

}

