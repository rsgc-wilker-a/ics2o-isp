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
        var equation = String(describing: enterProblemHere)
        
        //( Following lines of code are setup
        var word = ""
        var count = 1
        
        var stringA = " "
        var stringB = " "
        var stringC = " "
        var stringD = " "
        var stringE = " "
        //)
        
        //( Following lines of code seperate the strings
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
        
        //( Following lines of code turn strings into doubles with new variable names
        let doubleC = Double(stringC)!

        let doubleE = Double(stringE)!
        //)
        
        //( Setup
        var lastDouble = 0.0
        //)
        
        //( Does the mathematical equations dependant on what sign is given
        if stringB == "+"{lastDouble = doubleE - doubleC}
        if stringB == "-"{lastDouble = doubleE + doubleC}
        if stringB == "*"{lastDouble = doubleE / doubleC}
        if stringB == "/"{lastDouble = doubleE * doubleC}
        //)
        
        //( Turns the answer into a string
        var lastString = ""
        lastString = String(lastDouble)
        //)
        
        //( What the user sees
        answer.text = "\(stringA) \(stringD) \(lastString)"
        //)
    }

}

