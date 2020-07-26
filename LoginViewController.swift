//
//  LoginViewController.swift
//  Streamy
//
//  Created by Alexis Fry on 25/7/2020.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    @IBOutlet weak var roundedLogin: UIImageView!
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        self.navigationController!.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController!.navigationBar.shadowImage = UIImage()
        self.navigationController!.navigationBar.isTranslucent = true
        navigationItem.hidesBackButton = true
        self.roundedLogin.layer.cornerRadius = 13
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e)
                } else {
                    self.performSegue(withIdentifier: "LoginToShower", sender: self)
                }
            }
        }
    }
    
    @IBAction func loginBack(_ sender: UIButton) {
        for controller in self.navigationController!.viewControllers as Array {
            if controller.isKind(of: WelcomeViewController.self) {
                self.navigationController!.popToViewController(controller, animated: true)
                break
            }
        }
    }
    
    
}
