//
//  PlaylistViewController.swift
//  Streamy
//
//  Created by Alexis Fry on 7/26/20.
//

import UIKit

class PlaylistViewController: UIViewController {

    @IBOutlet weak var roundedShower: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        self.roundedShower.layer.cornerRadius = 13
    }

}
