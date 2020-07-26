//
//  ShowerViewController.swift
//  Streamy
//
//  Created by Alexis Fry on 7/26/20.
//

import UIKit
import Firebase
import Darwin

class ShowerViewController: UIViewController {
    
    var points: Int = 0
    @IBOutlet weak var pts: UILabel!
    
    override func viewDidLoad() {
         super.viewDidLoad()
        navigationItem.hidesBackButton = true //TO HIDE ALL BACK IF TIME PERMITS AND REPLACE WITH CANCEL

     }
     
    
    @IBAction func logOutPressed(_ sender: UIButton) {
        do {
          try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
          print ("Error signing out: %@", signOutError)
        }
          
    }
    
    @IBAction func showerPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toPlaylist", sender: self)
        points += 1
        pts.text = "\(points)"
    }

    
}


