//
//  userDataViewController.swift
//  WeatherAlarm
//
//  Created by Klaus Schleicher on 10.07.17.
//  Copyright © 2017 Klaus Schleicher. All rights reserved.
//

import UIKit
import Firebase
class userDataViewController: UIViewController {

    //Widgets for the Metadata
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var saveBtn: UIButton!
    @IBOutlet weak var chgPasswordBtn: UIButton!
    
    //Widgets for the password change action! This field are hidden and will only show if the user press the "change password" button
    @IBOutlet weak var oldPasswordField: UITextField!
    @IBOutlet weak var newPasswordField: UITextField!
    @IBOutlet weak var confNewPasswordField: UITextField!
   
    @IBOutlet weak var pwdCancleBtn: UIButton!
    @IBOutlet weak var pwdSaveBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func saveDataChangesPressed(_ sender: Any) {
        
    }

    @IBAction func changePasswordPressed(_ sender: Any) {
        
        //Show Password text fields
        oldPasswordField.isHidden = false
        newPasswordField.isHidden = false
        confNewPasswordField.isHidden = false
        //Show password change buttons
        pwdSaveBtn.isHidden = false
        pwdCancleBtn.isHidden = false
        //Disable buttons for meta data operations
        saveBtn.isEnabled = false
        chgPasswordBtn.isEnabled = false
        
    }
    
    @IBAction func pwdCancelPressed(_ sender: Any) {

        //clear possible text in the pwd fields
        oldPasswordField.text = ""
        newPasswordField.text = ""
        confNewPasswordField.text = ""
        //Show Password text fields
        oldPasswordField.isHidden = true
        newPasswordField.isHidden = true
        confNewPasswordField.isHidden = true
        //Show password change buttons
        pwdSaveBtn.isHidden = true
        pwdCancleBtn.isHidden = true
        //Disable buttons for meta data operations
        saveBtn.isEnabled = true
        chgPasswordBtn.isEnabled = true
        
    }
    
    @IBOutlet weak var pwdSavePressed: UIButton!
    
    
}
