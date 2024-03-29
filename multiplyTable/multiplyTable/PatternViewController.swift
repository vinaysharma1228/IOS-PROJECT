//
//  PatternViewController.swift
//  multiplyTable
//
//  Created by STUDENT on 09/02/24.
//

import UIKit

class PatternViewController: UIViewController {

    @IBOutlet weak var txt_num: UITextField!
    
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
    

    

    @IBAction func printPattern(_ sender: Any) {
        
        if let numStr = txt_num.text, let num = Int(numStr) {
               var row = ""
               
               for i in 1...num {
                   
                   for j in 1...i
                   {
                       row += "\(j) "
                   }
                   row += "\n"
               }
              result.isHidden=false
               result.text = row
           } else {
               result.text = "Invalid input"
           }
    }
}
