//
//  ViewController.swift
//  StringManipulation
//
//  Created by STUDENT on 09/02/24.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var txt: UITextField!
    
    @IBOutlet weak var result: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradientLayer = CAGradientLayer()
           
               gradientLayer.colors = [
                   UIColor(red: 255.0 / 255.0, green: 0.0 / 255.0, blue: 0.0 / 255.0, alpha: 1.0).cgColor,
                   UIColor(red: 0.0 / 255.0, green: 0.0 / 255.0, blue: 255.0 / 255.0, alpha: 1.0).cgColor
               ]
               
               gradientLayer.locations = [0.0, 1.0]
               
               gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
               gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
              
               gradientLayer.frame = view.bounds
               view.layer.insertSublayer(gradientLayer, at: 0)
               

    }
    
    
    
    @IBAction func countLength(_ sender: Any) {
        
        if let myTxt = txt.text {
            let len: Int = myTxt.count
            result.text = "\(len)"
        } else {
         
            result.text = "Text field is empty"
        }
        
        
    }
    
    
    @IBAction func upperCase(_ sender: Any) {
        
        if let myTxt = txt.text {
             
            let uppercse=myTxt.uppercased()
            result.text = "\(uppercse)"
        } else {
         
            result.text = "Text field is empty"
        }
        
    }
    
    @IBAction func lowerCasePrint(_ sender: Any) {
        
        if let myTxt = txt.text {
             
            let lowercse=myTxt.lowercased()
            result.text = "\(lowercse)"
        } else {
         
            result.text = "Text field is empty"
        }
    }
    
    
    @IBAction func reversedStrng(_ sender: Any) {
        
        if let myTxt = txt.text {
             
            let revese=String(myTxt.reversed())
            result.text = revese
        } else {
         
            result.text = "Text field is empty"
        }
    }
    
    @IBAction func firstCharacter(_ sender: Any) {
        if let myTxt = txt.text, !myTxt.isEmpty {
                let firstCharacter = myTxt.first
               
                if let firstChar = firstCharacter {
                    result.text="\(firstChar)"
                }
            }
    }
    
    @IBAction func lastCharacter(_ sender: Any) {
        if let myTxt = txt.text, !myTxt.isEmpty {
                let len = myTxt.count
                let lastIndex = myTxt.index(myTxt.startIndex, offsetBy: len - 1)
                let lastCharacter = myTxt[lastIndex]
                
            result.text="\(lastCharacter)"
                
            }
    }
}

