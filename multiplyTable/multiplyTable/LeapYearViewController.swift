//
//  LeapYearViewController.swift
//  multiplyTable
//
//  Created by STUDENT on 05/02/24.
//

import UIKit

class LeapYearViewController: UIViewController {

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
    

   

    @IBAction func checkLeapYear(_ sender: Any) {
        if let numStr = txt_num.text, let num1 = Int(numStr) {
               
            
            result.isHidden=false
             if num1%4==0 && num1%100 != 0 || num1%400==0
            {
                 result.text="\(num1) is Leap year."
             }
            else{
                result.text="\(num1) is Not Leap year."
            }
            
            
              
           } else {
               result.text = "Invalid input"
           }
    
        
    }
}
