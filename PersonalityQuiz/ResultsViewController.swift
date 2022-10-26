//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by mac on 13/10/2022.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    
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
        navigationItem.hidesBackButton = true
    }
    
    func calculatePersonalityResult(){
        let frequencyOfAnswers = responses.reduce(into: [:]){
            (counts,answer) in
            counts[answer.type,default: 0] += 1
        }

        let mostCommonAnswer = frequencyOfAnswers.sorted(by: {(pair1,pair2) in
            return pair1.value > pair2.value
        }).first!.key
        
        answerLabel.text = "You are offically a \(mostCommonAnswer.rawValue)"
        definitionLabel.text = mostCommonAnswer.definition
        
        
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
