//
//  LoginViewController.swift
//  Donation
//
//  Created by yuan zhuang on 6/20/17.
//  Copyright © 2017 yuan zhuang. All rights reserved.
//

import Foundation
import UIKit

private enum TextfieldTags: Int{
 case usernameTextField , passwordTextField;
}

class LoginViewController: UIViewController{
    
    /*set up layout 
     *
     */
    @IBOutlet weak var usernameTextField: UITextField!
    
    
    @IBOutlet weak var usernameLabel: UILabel!
    
   
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var passwordLabel: UILabel!
    
    @IBAction func editChanged(sender: UITextField) {
        
        switch sender.tag {
        case TextfieldTags.usernameTextField.rawValue:
            if let text = sender.text{
                usernameLabel.hidden = text == "" ? false : true;
            }
            
        case TextfieldTags.passwordTextField.rawValue:
            if let text = sender.text{
                passwordLabel.hidden = text == "" ? false : true;
            }
        default:
            break;
            
        }

    }
    @IBOutlet weak var warningLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTextField.tag = TextfieldTags.usernameTextField.rawValue;
        passwordTextField.tag = TextfieldTags.passwordTextField.rawValue;
        warningLabel.hidden = true;
        
    }
    
    
    /*
     * login check
     */
    var loginModel = LoginModel();
    @IBAction func login(sender: UIButton) {
        warningLabel.hidden = true;
        var can_login = false;
        if let username = usernameTextField?.text{
            if let password = passwordTextField?.text{
                can_login = loginModel.user_exist(username,password: password);
            }
        }
        
        if can_login{
            //prepare segue
            // perform segue into home
            performSegueWithIdentifier("loginSegue", sender: sender)
            
        }else{
            //let warning label appear
            warningLabel.hidden = false;
            
            
        }
        
        
    }
   
}