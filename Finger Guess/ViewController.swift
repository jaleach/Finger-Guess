//
//  ViewController.swift
//  Finger Guess
//
//  Created by James Leach on 11/1/16.
//  Copyright © 2016 Dadio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var fingerTestField: UITextField!
    
    
    @IBAction func guess(_ sender: AnyObject) {
        
      //  print ("Guess pressed")
        
        let diceRoll = String(arc4random_uniform(6))
        
        if fingerTestField.text == diceRoll{
        
            resultLabel.text = "You're right!"
        
        } else {
        
        resultLabel.text = "Wrong! It was a " + diceRoll + "."
        
        }
        
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

