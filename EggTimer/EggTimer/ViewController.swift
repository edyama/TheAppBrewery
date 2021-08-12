//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    // MARK: - Constants
    
    let eggTimes = ["Soft": 5, "Medium": 8, "Hard": 12]
    
    // MARK: - Variables
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var soundEnd: AVAudioPlayer!
    
    var timer = Timer()
    
    var totalTime = 0
    var timePassed = 0
    
    @IBAction func hardnessSelection(_ sender: UIButton) {
        
        timer.invalidate()
        guard let hardness = sender.currentTitle else { return }
        totalTime = eggTimes[hardness]!
        
        progressBar.progress = 0.0
        timePassed = 0
        titleLabel.text = hardness
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if timePassed < totalTime {
            timePassed += 1
            progressBar.progress = Float(timePassed) / Float(totalTime)
        } else {
            progressBar.progress = 1.0
            soundFinished(soundName: "alarm_sound")
            titleLabel.text = "Done"
        }
    }
    
    func soundFinished(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "mp3")
        soundEnd = try! AVAudioPlayer(contentsOf: url!)
        soundEnd.play()
    }
}
