//
//  ViewController.swift
//  calculator
//
//  Created by Ivan Oliferovich on 11/1/20.
//

import UIKit

class ViewController: UIViewController {

    var numberFromScreen:Double = 0;
    var firstNum:Double = 0;
    var mathSign:Bool = false;
    var operation:Int = 0;
    
    @IBOutlet weak var result: UILabel!
    @IBAction func digits(_ sender: UIButton) {
        if mathSign == true {
            result.text = String(sender.tag)
            mathSign = false
        }
        else {
            result.text = result.text! + String(sender.tag)
        }
        
       
        
        numberFromScreen = Double(result.text!)!
        
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        if result.text != "" && sender.tag != 10 && sender.tag != 15 {
            firstNum = Double(result.text!)!
            
            if sender.tag == 11 { // delenie
                result.text = "/";
            }
            
            else if sender.tag == 12 { // ymnozhenie
                result.text = "*";
            }
            
            else if sender.tag == 13 { // vichitanie
                result.text = "-";
            }
            
            else if sender.tag == 14 { // slozhenie
                result.text = "+";
            }
            operation = sender.tag
            mathSign = true;
            }
        
            else if sender.tag == 17 { // procent
            result.text = "%";
            }
            
            else if sender.tag == 16 { // otritstelmoe chislo
                result.text = "-";
            }
            
        else if sender.tag == 15 { // ravno
            if operation == 11 {
                result.text = String(firstNum / numberFromScreen)
            }
            else if operation == 12 {
                result.text = String(firstNum * numberFromScreen)
            }
            else if operation == 13 {
                result.text = String(firstNum - numberFromScreen)
            }
            else if operation == 14 {
                result.text = String(firstNum + numberFromScreen)
            }
            else if operation == 17 {
                result.text = String(numberFromScreen / 100);
            }
            else if operation == 16 {
                result.text = String(numberFromScreen * -1);
            }
        }
        else if sender.tag == 10 {
            result.text = ""
            firstNum = 0
            numberFromScreen = 0
            operation = 0
        }
    }

    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

