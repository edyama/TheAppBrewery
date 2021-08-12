//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Variables
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var answerButton: [UIButton]!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var questions = QuizBrain()
    var scoreAnswer = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        changeUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        guard let userAnswer = sender.currentTitle else { return }
        let isItRight = questions.checkAnswer(userAnswer)
        
        if isItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        questions.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(changeUI), userInfo: nil, repeats: false)
    }
    
    @objc func changeUI() {
        questionLabel.text = questions.getQuestionText()
        for i in 0...2 {
            answerButton[i].setTitle(questions.getTextButton(i), for: .normal)
        }
        progressBar.progress = questions.getProgress()
        scoreLabel.text = "Score: \(questions.getScore())"
        
        for j in 0...2 {
            answerButton[j].backgroundColor = UIColor.clear
        }
    }
}

