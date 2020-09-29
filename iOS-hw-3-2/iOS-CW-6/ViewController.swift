//
//  ViewController.swift
//  iOS-CW-6
//
//  Created by Aziz Alhaider on 9/27/20.
//  Copyright © 2020 Aziz Alhaider. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var b7: UIButton!
    @IBOutlet weak var b8: UIButton!
    @IBOutlet weak var b9: UIButton!
    
    @IBOutlet weak var TurnHhoWillWin: UILabel!
    
    
    var buttons : [UIButton] = []
    var counter = 0
    
    
    override func viewDidLoad() {
        buttons = [b1 , b2 , b3 , b4 , b5 , b6 , b7 , b8 , b9]
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func press(_ sender: UIButton) {
        
        if counter % 2 == 0 {
            sender.setTitle("X", for: .normal)
            sender.setTitleColor(.green, for: .normal)
            TurnHhoWillWin.text = "O Turn"
        }
        else{
            sender.setTitle("O", for: .normal)
            sender.setTitleColor(.red, for: .normal)
            TurnHhoWillWin.text = "X Turn"
        }
        counter += 1
        sender.isEnabled = false
        
        winning(winner: "X")
        winning(winner: "O")
    }
    
    
    @IBAction func resetButton() {
        resstartGame()
    }
    
    func winning(winner: String)  {
        if (b1.titleLabel?.text == winner && b2.titleLabel?.text == winner && b3.titleLabel?.text == winner) ||
           (b4.titleLabel?.text == winner && b5.titleLabel?.text == winner && b6.titleLabel?.text == winner) ||
           (b7.titleLabel?.text == winner && b8.titleLabel?.text == winner && b9.titleLabel?.text == winner) ||
           (b1.titleLabel?.text == winner && b4.titleLabel?.text == winner && b7.titleLabel?.text == winner) ||
           (b2.titleLabel?.text == winner && b5.titleLabel?.text == winner && b8.titleLabel?.text == winner) ||
           (b3.titleLabel?.text == winner && b6.titleLabel?.text == winner && b9.titleLabel?.text == winner) ||
           (b1.titleLabel?.text == winner && b5.titleLabel?.text == winner && b9.titleLabel?.text == winner) ||
           (b3.titleLabel?.text == winner && b5.titleLabel?.text == winner && b7.titleLabel?.text == winner) {
            print("\(winner) Wins")
           
            
            let alertController = UIAlertController(title: "\(winner) wins 😍", message: "press the button to restsrt the game", preferredStyle: .alert)
            
            let alertAction = UIAlertAction(title: "Restsrt", style: .cancel) { (alert) in
                self.resstartGame()
            }
            alertController.addAction(alertAction)
            present(alertController, animated: true, completion: nil)
        }
    }
    
    func resstartGame(){
        
        for b in buttons{
            b.setTitle("", for: .normal)
            b.titleLabel?.text = ""
            b.isEnabled = true
        }

        counter = 0
        TurnHhoWillWin.text = "X Turn"
        
    }
    
    
}
