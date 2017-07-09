//
//  SignInViewController.swift
//  WeatherAlarm
//
//  Created by Klaus Schleicher on 09.07.17.
//  Copyright © 2017 Klaus Schleicher. All rights reserved.
//

import UIKit
import Firebase


class SignInViewController: UIViewController {

    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var confirmPwField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func signInPressed(_ sender: Any) {
        
        guard nameField.text != "", passwordField.text != "", confirmPwField.text != "", emailField.text != "" else {
            //TODO: Proper error handling and message display
            return
        }
        if passwordField.text == confirmPwField.text {
            //Everything is ok, now let us create the new user.
            //TODO: Check for user already exists.
            Auth.auth().createUser(withEmail: emailField.text!, password: passwordField.text!, completion: { (user, error) in
                
                if let error = error{
                    print(error.localizedDescription)
                }
                
                if let user = user {
                    let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PlanningsVC")
                    self.present(vc, animated: true, completion: nil)
                }
            })
            
        }
    }
}
