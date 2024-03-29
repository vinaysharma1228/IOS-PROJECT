//
//  LargestNumberViewController.swift
//  multiplyTable
//
//  Created by STUDENT on 09/02/24.
//

import UIKit

class LargestNumberViewController: UIViewController {
    
    
    @IBOutlet weak var firstNum: UITextField!
    
    @IBOutlet weak var secondNum: UITextField!
    
    @IBOutlet weak var thirdNum: UITextField!
    
    @IBOutlet weak var result: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        result.isHidden=true

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
    
    
    @IBAction func checkLargestNumber(_ sender: Any) {
        
        if let numStr1 = firstNum.text,let numStr2=secondNum.text,let numStr3=thirdNum.text, let num1 = Int(numStr1),let num2=Int(numStr2),let num3=Int(numStr3) {
               
            
            result.isHidden=false
            
            
            
            if num1 > num2 && num1 > num3
            {
                result.text="\(num1) is largest Number."
            }
            else if num2 > num1 && num2 > num3
            {
                result.text="\(num2) is largest Number."
            }
            else{
                result.text="\(num3) is largest Number."
            }
            
              
           } else {
               result.text = "Invalid input"
           }
    }
    

    

}
