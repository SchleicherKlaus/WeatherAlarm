//
//  ViewController.swift
//  WeatherAlarm
//
//  Created by Klaus Schleicher on 01.07.17.
//  Copyright © 2017 Klaus Schleicher. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn

class ViewController: UIViewController, GIDSignInUIDelegate {

    @IBOutlet weak var signInButton: GIDSignInButton!
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().signIn()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnLoginPressed(_ sender: Any) {
        
        let username: String? = txtUsername.text
        let password: String? = txtPassword.text
        if  username == nil{
            print("Please enter a username!")
            return
        }
        if password == nil  {
            print("Please enter your password")
            return
        }
        
        
        
    }

}

