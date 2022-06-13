//
//  SigninViewModel.swift
//  Amsocial
//
//  Created by Amitnyc on 6/13/22.
//

import UIKit
import FirebaseAuth
import SVProgressHUD

class SigninViewModel: NSObject {
    func signin(_ email: String, _ password: String, _ completion: @escaping ((_ user: AMUser?) -> Void)) {
        SVProgressHUD.show()
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            SVProgressHUD.dismiss()
            if let result = result {
                let user = AMUser()
                user.email = email
                user.firuser = result.user
                completion(user)
            } else {
                completion(nil)
            }
        }
    }
}
