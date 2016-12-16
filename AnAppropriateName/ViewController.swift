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
    
        //( Following lines of codes are setup, count is to increase with every spin of the loop, word is an empty string that will hold a value to seperate the 5 strings.
        var word = ""
        var count = 1
        
        var stringA = ""
        var stringB = ""
        var stringC = ""
        var stringD = ""
        var stringE = ""
        //)
        
        //( Following lines of code seperate equation into five strings
        for character in equation.characters {
            if character == " " {
                if count == 1{stringA = word}
                if count == 2{stringB = word}
                if count == 3{stringC = word}
                if count == 4{stringD = word}
                count = count + 1
                word = ""
            } else {
                word += "\(character)"
            }
        }
                              stringE = word
        //)
        
        //( Following lines of code turns the first and second numbers into doubles (ex: 0.0)
        let doubleC = Double(stringC)!

        let doubleE = Double(stringE)!
        //)
        
        //( Setup
        var lastDouble = 0.0
        //)
        
        //( Does the mathematical equations dependant on what sign is given, to find the right side of the x =
        if stringB == "+"{lastDouble = doubleE - doubleC}
        if stringB == "-"{lastDouble = doubleE + doubleC}
        if stringB == "*"{lastDouble = doubleE / doubleC}
        if stringB == "/"{lastDouble = doubleE * doubleC}
        //)
        
        //( Turns the right side of the x = back into a string to feed back to the user
        var lastString = ""
        lastString = String(lastDouble)
        //)
        
        //( This part finally gets the x, y, z, what ever was entered as the first part, the = sign, and what we found x to equal to into answer.text
        answer.text = "\(stringA) \(stringD) \(lastString)"
        //)
    }

}

