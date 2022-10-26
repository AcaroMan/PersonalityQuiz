//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by mac on 13/10/2022.
//

import UIKit

class ResultsViewController: UIViewController {
    
    
    var responses : [Answer]
    
    init?(coder: NSCoder, responses:[Answer]){

        self.responses = responses
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()
        // Do any additional setup after loading the view.
    }
    
    func calculatePersonalityResult(){
        let frequencyOfAnswers = responses.reduce(into: [:]){
            (counts,answer) in
            counts[answer.type,default: 0] += 1
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
