//
//  SignUpViewController.swift
//  HowlTalk
//
//  Created by 신예지 on 10/11/2019.
//  Copyright © 2019 신예지. All rights reserved.
//

import UIKit
import Firebase

class SignUpViewController: UIViewController {
    @IBOutlet weak var emailIdTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        signupButton.addTarget(self, action: #selector(actionSignup), for: UIControl.Event.touchUpInside)
    }
    
    @objc func actionSignup() {
        
        Auth.auth().createUser(withEmail: emailIdTextField.text!, password: passwordTextField.text!) { (auth, err) in
            

            if(err == nil) {
                var uid = auth?.user.uid
                
                var map = [
                    "name" : self.nameTextField.text!,
                    "email" : auth?.user.email,
                    "uid" : auth?.user.uid
                ]
                Database.database().reference()
                    .child("users")
                    .childByAutoId()
                    .setValue(map)
                }
            }
            

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
