//
//  PalindromeViewController.swift
//  multiplyTable
//
//  Created by STUDENT on 09/02/24.
//

import UIKit

class PalindromeViewController: UIViewController {

    @IBOutlet weak var result: UITextView!
    @IBOutlet weak var txt_num: UITextField!
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
    

    
    @IBAction func checkPalindrome(_ sender: Any) {
        
        if let numStr = txt_num.text, var num1 = Int(numStr) {
               
            
            result.isHidden=false
            
            var rev=0
            
            let ori=num1
            
            while(num1 != 0)
            {
                let a=num1%10
                rev=(rev * 10) + a
                num1 = num1/10
            }
            
            
            
             if rev == ori
            {
                 result.text="\(ori) is Palindrome Number."
             }
            else{
                result.text="\(ori) is Not Palindrome Number."
            }
            
            
              
           } else {
               result.text = "Invalid input"
           }
    }
    
}
