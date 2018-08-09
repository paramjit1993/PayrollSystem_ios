//
//  ViewController.swift
//  PayrollSystem
//
//  Created by MacStudent on 2018-08-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class splashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    perform(#selector(self.showLoginVC), with: nil, afterDelay: 5)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func showLoginVC(){
        performSegue(withIdentifier: "segueToLogin", sender: self)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


