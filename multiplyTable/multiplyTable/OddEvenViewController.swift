//
//  OddEvenViewController.swift
//  multiplyTable
//
//  Created by STUDENT on 05/02/24.
//

import UIKit

class OddEvenViewController: UIViewController {

    
    
    @IBOutlet weak var number: UITextField!
    
    @IBOutlet weak var result: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
    
    
    @IBAction func checkOddEven(_ sender: Any) {
        if let numStr = number.text, let num1 = Int(numStr) {
               
            
            result.isHidden=false
            
           if num1%2==0
            {
               result.text="\(num1) is Even Number."
           }
            else{
                result.text="\(num1) is Odd Number."
            }
        
            
              
           } else {
               result.text = "Invalid input"
           }
    }
    
}