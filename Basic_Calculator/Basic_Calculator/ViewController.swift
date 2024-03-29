//
//  ViewController.swift
//  Basic_Calculator
//
//  Created by STUDENT on 02/02/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var fnm: UITextField!
    
    @IBOutlet weak var lnm: UITextField!
    
    @IBOutlet weak var result: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
    }


    @IBAction func plusBtn(_ sender: Any) {
        if let num1Str = fnm.text, let num2Str = lnm.text {
                if let num1 = Double(num1Str), let num2 = Double(num2Str) {
                    let sum = num1 + num2
                    result.text = String(sum)
                } else {
                
                    result.text = "Invalid input"
                }
            }
    }
    
    @IBAction func minusBtn(_ sender: Any) {
        if let num1Str = fnm.text, let num2Str = lnm.text {
                if let num1 = Double(num1Str), let num2 = Double(num2Str) {
                    let min = num1 - num2
                    result.text = String(min)
                } else {
                
                    result.text = "Invalid input"
                }
            }
    }
    
    @IBAction func multipleBtn(_ sender: Any) {
        if let num1Str = fnm.text, let num2Str = lnm.text {
                if let num1 = Double(num1Str), let num2 = Double(num2Str) {
                    let mul = num1 * num2
                    result.text = String(mul)
                } else {
                
                    result.text = "Invalid input"
                }
            }
    }
    
    
    @IBAction func divideBtn(_ sender: Any) {
        if let num1Str = fnm.text, let num2Str = lnm.text {
                if let num1 = Double(num1Str), let num2 = Double(num2Str) {
                    let div = num1 / num2
                    result.text = String(div)
                } else {
                
                    result.text = "Invalid input"
                }
            }
    }
}

