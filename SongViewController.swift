//
//  SongViewController.swift
//  Streamy
//
//  Created by Alexis Fry on 7/26/20.
//

import UIKit
import AVFoundation

class SongViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
    var timer: Timer?
    var timeLeft: Int = 35
    //var completionHandler: ((String?)-> Void)

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true

        let sound = Bundle.main.path(forResource: "playlist", ofType: "mp3")
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath:sound!))
        }
        catch {
            print(error)
        }
    }
    
    @IBOutlet weak var durationGoing: UILabel!
    @IBOutlet weak var playSongChange: UIButton!
    
    @IBAction func playSongPressed(_ sender: UIButton) {
        audioPlayer.play()
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(onTimerFires), userInfo: nil, repeats: true)

        }
    
    @IBAction func stopPlayPressed(_ sender: Any) {
        audioPlayer.stop()
        timer?.invalidate()
        timer = nil
        //duration = 35 - timeLeft
    }
    
    
    @objc func onTimerFires() {
        timeLeft -= 1
        durationGoing.text = "\(timeLeft)"
        
        if timeLeft <= 0 {
            timer?.invalidate()
            timer = nil
        }
        
    }
}
    

