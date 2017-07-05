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

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnLoginPressed(_ sender: Any) {
        
        let username: String? = txtUsername.text
        let password: String? = txtPassword.text
        //check for username and password
        if  username == ""{
            print("Please enter a username!")
            return
        }
        if password == ""  {
            print("Please enter your password")
            return
        }
        
        //TODO: Auth against Google Firebase email authentication
        
        let planningsVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PlanningsVC")
        self.present(planningsVC, animated: true, completion: nil)
        
        
    }

    @IBAction func btnGoogleLoginPressed(_ sender: Any) {
        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().signIn()
        
    }
}

