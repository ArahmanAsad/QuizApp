

import Foundation

class Question {
    let questiontext : String
    let answer : Bool
    
    init (text : String , correctAnswer : Bool) {
        questiontext = text
        answer = correctAnswer
        
    }
}
