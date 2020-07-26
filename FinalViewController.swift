//
//  FinalViewController.swift
//  Streamy
//
//  Created by Alexis Fry on 7/26/20.
//

import UIKit

class FinalViewController: UIViewController {
    
    @IBOutlet weak var roundedDone: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        self.roundedDone.layer.cornerRadius = 13
        
        
    }
    
    @IBAction func donePressed(_ sender: UIButton) {
        for controller in self.navigationController!.viewControllers as Array {
            if controller.isKind(of: ShowerViewController.self) {
                self.navigationController!.popToViewController(controller, animated: true)
                break
            }
        }
    }
    
}
