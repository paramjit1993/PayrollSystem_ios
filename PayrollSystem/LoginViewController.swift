//
//  LoginViewController.swift
//  PayrollSystem
//
//  Created by MacStudent on 2018-08-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBAction func swRem(_ sender: UISwitch) {
    }
    
    @IBAction func btLogin(_ sender: UIButton) {
        if txtUserName.text == "admin@a.com" && txtPassword.text == "SECRET"
        {
            performSegue(withIdentifier: "showHomeScreen", sender: self)
            print("Login Success")
            
        }
        else{
            print("User Email / Password incorrect")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
    
  override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
