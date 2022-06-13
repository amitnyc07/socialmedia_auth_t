//
//  LoginViewController.swift
//  Amsocial
//
//  Created by Amitnyc on 6/13/22.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "SigninViewController" {
            let controller = segue.destination as! SigninViewController
            controller.viewModel = SigninViewModel()
        } else if segue.identifier == "SignupViewController" {
            let controller = segue.destination as! SignupViewController
            controller.viewModel = SignupViewModel()
        }
    }
}
