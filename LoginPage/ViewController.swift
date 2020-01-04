//
//  ViewController.swift
//  LoginPage
//
//  Created by Md Maruf Prodhan on 12/24/19.
//  Copyright © 2019 Md Maruf Prodhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidAppear(_ animated: Bool) {
        // Check if user is already logged in
        let isUserLoggedIn = UserDefaults.standard.bool(forKey: "isUserLoggedIn");
        print(isUserLoggedIn);
        if(!isUserLoggedIn){
            print("Hit!!")
            self.performSegue(withIdentifier: "DashBoardToLoginPage", sender: self);
        }
    }
    

}

