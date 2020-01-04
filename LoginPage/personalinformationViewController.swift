//
//  PersonalInformationViewController.swift
//  LoginPage
//
//  Created by Md Maruf Prodhan on 12/25/19.
//  Copyright © 2019 Md Maruf Prodhan. All rights reserved.
//

import UIKit

class PersonalInformationViewController: UIViewController {
    @IBOutlet weak var UserNameTextField: UITextField!
    @IBOutlet weak var UserEmailTextField:UITextField!
    @IBOutlet weak var UserPasswordTextField: UITextField!
    @IBOutlet weak var ConfirmPasswordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
    
    @IBAction func RegisterButtonTapped(_ sender: Any) {
        let UserEmail = UserEmailTextField.text;
        let UserPassword = UserPasswordTextField.text;
        let UserConfirmPassword = ConfirmPasswordTextField.text;
        
        // Check for empty fields

        if(UserName!.isEmpty||, UserEmail!.isEmpty || UserPassword!.isEmpty || UserConfirmPassword!.isEmpty)
        {
            //Disply alert message
            
                displayMyAlertMessage(userMessage:  "All fields are required");
            return;
        }
        
        // Check if passwords match
        
        
        if(UserPassword != UserConfirmPassword){
            displayMyAlertMessage(userMessage: "userMessage: Password do not match");
            
            //Display alert message
            return;
        }
        
        //Store data
        //Display alert message with confirmation
        
      
        
        
    }
    
    func displayMyAlertMessage(userMessage:String){
        
        var myAlert=UIAlertController(title:"Alert",message:userMessage,preferredStyle:UIAlertController.Style.alert);
    //    let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
     //       myAlert.addAction(okAction);
            
            //self.presentationController(myAlert,dismiss(animated: true, completion: nil))
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


