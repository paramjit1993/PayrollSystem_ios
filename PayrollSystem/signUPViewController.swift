//
//  signUPViewController.swift
//  PayrollSystem
//
//  Created by MacStudent on 2018-08-14.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class signUPViewController: UIViewController {
    @IBOutlet weak var txtEmpName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtConfirmPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func btRegister(_ sender: Any) {
        
        let empName = txtEmpName.text
         let empEmail = txtEmail.text
         let empPassword = txtPassword.text
         let empConfirmPassword = txtConfirmPassword.text
        
        if ( txtEmpName.isEmpty || txtEmail.isEmpty || txtPassword.isEmpty || txtConfirmPassword.isEmpty){
            
            displayMyAlertMessage("All Fields Mandatory")
            return;
        }
    }
    
    
    func displayMyAlertMessage(userMessage: String)
    {
        var MyAlert = UIAlertController(title: "Alert", message: userMessage,preferredStyle: UIAlertControllerStyle.alert);
        
        let okAction = UIAlertAction(title: "OK", style:);
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
