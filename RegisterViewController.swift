//
//  RegisterViewController.swift
//  Streamy
//
//  Created by Alexis Fry on 25/7/2020.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
    
    
    @IBOutlet weak var roundedRegister: UIButton!
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        self.navigationController!.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController!.navigationBar.shadowImage = UIImage()
        self.navigationController!.navigationBar.isTranslucent = true
        self.roundedRegister.layer.cornerRadius = 13
        navigationItem.hidesBackButton = true
    }
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text, let password = passwordTextfield.text{
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e)
                } else {
                    self.performSegue(withIdentifier: "RegisterToShower", sender: self)
                }
            }
        }
    }
    
    @IBAction func backRegister(_ sender: UIButton) {
        for controller in self.navigationController!.viewControllers as Array {
            if controller.isKind(of: WelcomeViewController.self) {
                self.navigationController!.popToViewController(controller, animated: true)
                break
            }
        }

    }
    
    
}
