//
//  ViewController.swift
//  Quizzler
//
//  Created by A.Rahman on 4/7/18.
//  Copyright © 2018  All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let allQuestions = QuestionBank()
    
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var score : Int = 0
    
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    let firstQuestion=allQuestions.list[0]
        questionLabel.text=firstQuestion.questiontext
        
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        }
        else if sender.tag == 2 {
        pickedAnswer = false
        
        }
       checkAnswer()
       questionNumber=questionNumber+1
   nextQuestion()
        
      
    }
    
    //to change (update) score and Q number & frameSize
    
    func updateUI() {
        scoreLabel.text = "score :  \(score)"
        progressLabel.text="\(questionNumber) / 13"
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber)
   
      
    }
    
//alerts & messages
    func nextQuestion() {
        if questionNumber  <= 12 {
     
        questionLabel.text=allQuestions.list[questionNumber].questiontext
            
            updateUI()
        }else{
            let alert = UIAlertController(title:"awesome", message:"Congratulations you've finished , Do you wanna start over !" , preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in
            self.startOver()
                
            })
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
            
            
            }
        
    }
    
        
    
    
    //checking answers and showing score
    func checkAnswer() {
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        if correctAnswer == pickedAnswer {
            print ("right 👏🏻")
            score=score+1
         
            
        }else { print ("wrong 👎🏻")
        }
    }
    //to restart over
    
    func startOver() {
        questionNumber=0
        nextQuestion()
   
       
    }
    

    
}

