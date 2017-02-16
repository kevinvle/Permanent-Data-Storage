//
//  ViewController.swift
//  Permanent Data Storage
//
//  Created by Kevin Le on 2/14/17.
//  Copyright © 2017 Kevinvle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet var textField: UITextField!
   
    @IBAction func submit(_ sender: Any) {
        
        UserDefaults.standard.set(textField.text, forKey: "number")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let numberObject = UserDefaults.standard.object(forKey: "number")
        
        if let number = numberObject as? String {
            
            textField.text = number
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



/* 

 // Do any additional setup after loading the view, typically from a nib.
 
 // UserDefaults.standard.set("Rob", forKey: "name")
 
 // when you comment out UserDefaults, you're saving the values PERMANENTLY.
 
 let nameObject = UserDefaults.standard.object(forKey: "name")
 
 if let name = nameObject as? String {
 
 print(name)
 }
 
 // let arr = [1, 2, 3, 4]
 
 // UserDefaults.standard.set(arr, forKey: "array")
 
 // saving this permanently
 
 let arrayObject = UserDefaults.standard.object(forKey: "array")
 
 if let array = arrayObject as? NSArray {
 
 print(array)
 
 }
 
 */

