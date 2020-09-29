//
//  ViewController.swift
//  iOS-hw-3-1
//
//  Created by Aziz Alhaider on 9/28/20.
//  Copyright © 2020 Aziz Alhaider. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightLable: UITextField!
    @IBOutlet weak var weightLable: UITextField!
    @IBOutlet weak var BMIresult: UILabel!
    @IBOutlet weak var BMIstatus: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func bmicalButton(_ sender: Any) {
        bmical(weight: Double(weightLable.text!)!, height: Double(heightLable.text!)!)
   
}
    func bmical (weight: Double , height: Double){
        let bmi = weight / (height * height)
        if bmi < 20{
            BMIstatus.text = "ضعيف"
        }
        else if bmi <= 25{
            BMIstatus.text = "جيد"
        }
        else if bmi > 25{
            BMIstatus.text = "متين"
        }
        else{
            BMIstatus.text = "خطأ"
        }
        BMIresult.text = String(bmi)
        print(bmi)
    }
}
