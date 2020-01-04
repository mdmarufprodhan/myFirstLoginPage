//
//  CreateNewAccountViewController.swift
//  LoginPage
//
//  Created by Md Maruf Prodhan on 12/30/19.
//  Copyright © 2019 Md Maruf Prodhan. All rights reserved.
//

import UIKit

class CreateNewAccountViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    @IBOutlet weak var userConfirmPasswordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func registerButtonTapped(_ sender: AnyObject) {
        
        let userName = userNameTextField.text;
        let userEmail = userEmailTextField.text;
        let userPassword = userPasswordTextField.text;
        let userConfirmPassword = userConfirmPasswordTextField.text;
        // Check for empty fields
        
if((userName?.isEmpty)! || (userEmail?.isEmpty)! || (userPassword?.isEmpty)! || (userConfirmPassword?.isEmpty)!){
            //Display alert message
            displayAlertMessage(userMessage: "All fiels are required");
            return;
        }
        
        //Check if password match
        if(userPassword != userConfirmPassword){
            // Display alert message
            displayAlertMessage(userMessage: "Password do not match");
            return;
        }
        
        //Store data
        UserDefaults.standard.set(userName, forKey: "userName");
        UserDefaults.standard.set(userEmail, forKey: "userEmail");
     //   UserDefaults.standard.set(userPhoneNumber, forKey: "userPhoneNumber");
        UserDefaults.standard.set(userPassword, forKey: "userPassword");
        UserDefaults.standard.synchronize();
        //Display alert message with confirmation
        
        let userAlert = UIAlertController(title: "Alert", message: "Registration is successful.", preferredStyle: UIAlertController.Style.alert);
        let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default){ action in
            self.presentingViewController?.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil);
        }
        userAlert.addAction(okAction);
        self.present(userAlert,animated: true, completion: nil);
        
    }
    func displayAlertMessage(userMessage:String){
         let userAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertController.Style.alert);
        let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil);
        userAlert.addAction(okAction);
        
        self.present(userAlert, animated: true, completion: nil);
        
    }
    //Function check  for valid
    func isValidEmail(emailStr:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: emailStr)
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
