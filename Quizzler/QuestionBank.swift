//
//  ViewController.swift
//  Quizzler
//
//  Created by A.Rahman on 4/7/18.
//  Copyright © 2018  All rights reserved.
//
import Foundation

class QuestionBank {
    var list = [Question]()
    init (){
        list.append (Question(text : "human has got 32 teeth " , correctAnswer : true))

        list.append (Question(text : "egypt qualified to woldCup in russia ?", correctAnswer: true))
        list.append (Question(text : "realMadrid won the champions leauge number 13 in 2017 ? " , correctAnswer : true))
        
        list.append (Question(text : "iphone X has a press button ? ",correctAnswer : false ))
        list.append (Question(text : "crestiano Ronaldo is the best player in the wolrd in 2017?" , correctAnswer : true))
        
        list.append (Question(text : "a slug's blood is green" , correctAnswer : true))
        list.append (Question(text : "DC is Better than Marvel ? " , correctAnswer : false))
        
        list.append (Question(text : "apple is better than samsung " , correctAnswer : true))
        
        list.append (Question(text : "you are in question number 10", correctAnswer : false))
        list.append (Question(text : "zidan is the best football coach in 2017 " , correctAnswer : true))
        
        list.append (Question(text : "the pyramids are located in alexandria ?" , correctAnswer : false))
        list.append (Question(text : "Egypt has won the African Can in 2017 ? " , correctAnswer : false))
        
        list.append (Question(text : "valentin's day is banned in saudi arabia ", correctAnswer : true))
        
        
    }
    
}

