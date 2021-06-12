//
//  ViewController2.swift
//  Quizz
//
//  Created by Mihir Solanki on 11/06/21.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var questionLable: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    var quizBrain = QuizzBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        updateUI()
        
        
        

        
    }
    
    @IBAction func answerButton(_ sender: UIButton) {
        let userAnswer = sender.currentTitle! // True or False
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green // change the button color
        }
        else{
            sender.backgroundColor = UIColor.red
        }
         
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
       
        
    }
    @objc func updateUI(){
        questionLable.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score \(quizBrain.getScore())"
        trueButton.backgroundColor = UIColor.clear // clear the background color
        falseButton.backgroundColor = UIColor.clear
       
    }
    
    

}
