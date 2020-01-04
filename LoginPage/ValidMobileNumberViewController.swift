//
//  ValidMobileNumberViewController.swift
//  LoginPage
//
//  Created by Md Maruf Prodhan on 12/30/19.
//  Copyright © 2019 Md Maruf Prodhan. All rights reserved.
//

import UIKit

class ValidMobileNumberViewController: UIViewController
    
{

    @IBOutlet weak var validMobileNumberTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendCodeButtonTapped(_ sender: Any) {
        
        let validMobileNumber = validMobileNumberTextField.text;
        if(validMobileNumber!.isEmpty){
            //Display alert message
             displayAllertMessage(userMessage: "Field can not be empty. Please provide valid phone number!");
            return;
        }
        else{
            // Generate random code
            let randomCodeToVerify = Int.random(in: 1111..<9999);
            print(randomCodeToVerify);
            
            // Store data
            UserDefaults.standard.set(validMobileNumber, forKey: "validMobileNumber");
            UserDefaults.standard.set(randomCodeToVerify, forKey: "randomCodeToVerify");
            UserDefaults.standard.synchronize();
            
            // Dismiss the view as we don't need anymore
            //self.dismiss(animated: true, completion: nil);
            
            self.performSegue(withIdentifier: "ValidMobileToVericationCode", sender: self);
            
            // Dismiss the view as we don't need anymore
            //self.dismiss(animated: true, completion: nil);
            
        }
    }
    
    
    // Function to display allert message
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
