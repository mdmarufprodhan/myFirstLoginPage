//
//  LoginPageViewController.swift
//  LoginPage
//
//  Created by Md Maruf Prodhan on 12/30/19.
//  Copyright © 2019 Md Maruf Prodhan. All rights reserved.
//

import UIKit

class LoginPageViewController: UIViewController {

    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        let userEmail = userEmailTextField.text;
        print(userEmail as Any );
        let userPassword = userPasswordTextField.text;
        print(userEmail as Any);
        let userEmailStored = UserDefaults.standard.string(forKey: "userEmail");
        print(userEmailStored as Any);
         let userPasswordStored = UserDefaults.standard.string(forKey: "userPassword");
         print(userPasswordStored as Any)
        
     
        if(userEmailStored == userEmail){
            if(userPasswordStored == userPassword){
                // Login is successful
                UserDefaults.standard.set(true, forKey: "isUserLoggedIn");
                // Sync to save changes
                UserDefaults.standard.synchronize();
               //  print("Logged in succesfuly");
                //Display alert message
                displayAllertMessage(userMessage: "Login succesfully");
                // Dismiss the login view as we don't need anymore
                self.dismiss(animated: true, completion: nil);
                
            }
        }
        
        if(userEmail != userPassword){
            
            //Display alert message
            displayAllertMessage(userMessage: "Invalid mail and password, please try again");
            return;
        }
        else{
            
            // Dismiss the view as we don't need anymore
            //self.dismiss(animated: true, completion: nil);
            
            //self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil);
            // Call next page (Reg more info)
            self.performSegue(withIdentifier: "LoginPageTologout", sender: self);
            
        }
    }
    
    func displayAllertMessage(userMessage:String){
        let userAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertController.Style.alert);
        let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil);
        userAlert.addAction(okAction);
        
        self.present(userAlert, animated: true, completion: nil);
        
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
