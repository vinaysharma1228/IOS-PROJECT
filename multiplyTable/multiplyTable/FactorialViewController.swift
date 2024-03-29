//
//  FactorialViewController.swift
//  multiplyTable
//
//  Created by STUDENT on 05/02/24.
//

import UIKit

class FactorialViewController: UIViewController {

    @IBOutlet weak var number: UITextField!
    
    @IBOutlet weak var result: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        result.isHidden=true

        let gradientLayer = CAGradientLayer()

        // Set the colors for the gradient
        gradientLayer.colors = [
            UIColor(red: 255.0 / 255.0, green: 0.0 / 255.0, blue: 0.0 / 255.0, alpha: 1.0).cgColor,
            UIColor(red: 0.0 / 255.0, green: 0.0 / 255.0, blue: 255.0 / 255.0, alpha: 1.0).cgColor
        ]

        // Set the locations for the colors (optional)
        gradientLayer.locations = [0.0, 1.0]

        // Set the start and end points for the gradient
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)

        // Set the frame of the gradient layer to match the view's bounds
        gradientLayer.frame = view.bounds

        // Add the gradient layer to the view's layer
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    
    
    @IBAction func findFactorial(_ sender: Any) {
        
        if let numStr = number.text, let num1 = Int(numStr) {
               
            
            result.isHidden=false
            
            var fact=1
            
            for i in 1...num1
            {
                fact=fact * i
            }
            
            result.text=" Factorial of \(num1) is : \(fact)"
            
              
           } else {
               result.text = "Invalid input"
           }
    }
    
   
}
