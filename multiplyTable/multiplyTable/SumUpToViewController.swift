//
//  SumUpToViewController.swift
//  multiplyTable
//
//  Created by STUDENT on 09/02/24.
//

import UIKit

class SumUpToViewController: UIViewController {

    
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
    
    
    

    @IBAction func printSumUpto(_ sender: Any) {
        
        if let numStr=txt_num.text,let num=Int(numStr)
        {
            result.isHidden=false
            var sum=0
            
            for i in 1...num
            {
                sum=sum + i
            }
            
            result.text=" Sum of \(num) naturals Number is : \(sum)"
            
            
            
        }
        else{
            result.text="Invalid Input !!"
        }
        
    }
    

}
