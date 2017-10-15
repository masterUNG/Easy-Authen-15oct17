//
//  ViewController.swift
//  Easy Authen 15oct17
//
//  Created by MasterUNG on 15/10/2560 BE.
//  Copyright © 2560 MasterUNG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Explicit การประกาศตัวแปร
    //นี่คือตัวแปรที่เราจะเอาไว้รับค่าจากการกรอกผ่าน TextField
    var userString: String = ""
    var passwordString: String = ""
    
    //กำหนดค่าคงที่
    let userDictionary = ["user1":"u1234", "user2":"u2234", "user3":"u3234"]
    let alertDictionary = ["userFalse":"ไม่มี User นี้ในฐานข้อมูลของ เรา", "passFalse":"Please Try Agains Password False", "authenOK":"Welcome to my App"]
    
    
    
    
    

    
    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var alertLabel: UILabel!
    
    @IBAction func loginButton(_ sender: Any) {
        
        //Get Value From TextField
        userString = userTextField.text!
        passwordString = passwordTextField.text!
        
        //แสดงค่าที่รับมาจาก TextField บน Console
        print("User ==> \(userString)")
        print("Password ==> \(passwordString)")
        
        let resutlString = userDictionary[userString]
        print("result ==> \(String(describing: resutlString))")
        
        //Check User
        if (resutlString == nil) {
            //User False
            alertLabel.text = alertDictionary["userFalse"]
        }   else {
            
            if (passwordString == resutlString) {
                //Password True
                alertLabel.text = alertDictionary["authenOK"]
                
            }  else {
                //Passoword False
                alertLabel.text = alertDictionary["passFalse"]
            }
            
        }
        
        
        
    }   // loginButton
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

