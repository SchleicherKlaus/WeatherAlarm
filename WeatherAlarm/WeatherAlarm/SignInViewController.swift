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
    
    var ref: DatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        ref = Database.database().reference()
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
                    
                    
                    let userInfo: [String : Any] = ["uid" : user.uid,
                                                                 "full name" : self.nameField.text!,
                                                                 "email" : self.emailField.text!]
                    self.ref.child("users").child(user.uid).setValue(userInfo)
                    
                    
                    let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "usersDetailVC")
                    self.present(vc, animated: true, completion: nil)
                    
                }
            })
            
        }
    }
}
