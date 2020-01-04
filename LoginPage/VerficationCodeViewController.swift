//
//  VerficationCodeViewController.swift
//  LoginPage
//
//  Created by Md Maruf Prodhan on 12/30/19.
//  Copyright © 2019 Md Maruf Prodhan. All rights reserved.
//

import UIKit

class VerficationCodeViewController: UIViewController {

    @IBOutlet weak var verficationCodeTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func verifyButtonTapped(_ sender: Any) {
        
        let verficationCode = verficationCodeTextField.text;
        let generatedCode = UserDefaults.standard.string(forKey: "randomCodeToVerify");
        print("Code here: ")
        print(generatedCode as Any)
        if(generatedCode != verficationCode){
            // Display alert message
            displayAllertMessage(userMessage: "Invalid code, please try again");
            return;
        }
        
        else{
            
            // Dismiss the view as we don't need anymore
            //self.dismiss(animated: true, completion: nil);
            
            //self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil);
            // Call next page (Reg more info)
            self.performSegue(withIdentifier: "VerifacitionCodeToCreateAccount", sender: self);
            
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
