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
    var UserDefault: UserDefaults?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func btRegister(_ sender: Any) {
        
        let empName = txtEmpName;
        let empEmail = txtEmail;
        let empPassword = txtPassword;
        let empConfirmPassword = txtConfirmPassword;
        
       if (txtEmpName.text?.characters.count == 0 || txtEmail.text?.characters.count == 0 || txtPassword.text?.characters.count == 0  || txtConfirmPassword.text?.characters.count == 0 )
       {
            
            displayMyAlertMessage(userMessage: "All Fields Mandatory");
            return;
        }
        
        if (empPassword != empConfirmPassword)
        {
            displayMyAlertMessage(userMessage: "Password Do not Match");
            return;
        }
        
        
        UserDefault = UserDefaults.standard
        if let empName = UserDefault?.value(forKey: "Name")
        {
             txtEmpName.text = empName as? String
        }
            if let empPassword = UserDefault?.value(forKey: "Password")
            {
               
                txtPassword.text = empPassword as? String
            }
        
        
        let MyAlert = UIAlertController(title: "Alert", message: "Register Successfull",preferredStyle: UIAlertControllerStyle.alert);
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default){ ACTION in self.dismiss(animated: true, completion: nil);}
        
        MyAlert.addAction(okAction);
        self.dismiss(animated: true, completion: nil)
        
        
    
        
       
    }
    
    func displayMyAlertMessage(userMessage: String)
    {
        let MyAlert = UIAlertController(title: "Alert", message: userMessage,preferredStyle: UIAlertControllerStyle.alert);
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil);
        
        MyAlert.addAction(okAction);
        
        self.present(MyAlert, animated:true,completion: nil);
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
