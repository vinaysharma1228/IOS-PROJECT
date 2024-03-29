//
//  secndViewController.swift
//  multiplyTable
//
//  Created by STUDENT on 05/02/24.
//

import UIKit

class secndViewController: UIViewController {

    @IBOutlet weak var result: UITextView!
    
    @IBOutlet weak var number: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupGradientLayer()
        
        
        result.isHidden=true

        // Do any additional setup after loading the view.
    }
    
    private func setupGradientLayer() {
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

    
    @IBAction func printTabeBtn(_ sender: Any) {
       
        if let numStr = number.text, let num1 = Int(numStr) {
               var table = ""
               
               for i in 1...10 {
                   table += "\(num1) x \(i) = \(num1 * Int(i))\n"
               }
            result.isHidden=false
               result.text = table
           } else {
               result.text = "Invalid input"
           }
        
    }
    
}
