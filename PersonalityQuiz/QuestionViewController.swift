//
//  QuestionViewController.swift
//  PersonalityQuiz
//
//  Created by mac on 13/10/2022.
//

import UIKit

class QuestionViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    
    
    @IBOutlet weak var singleStackView: UIStackView!
    @IBOutlet weak var singleButton1: UIButton!
    @IBOutlet weak var singleButton2: UIButton!
    @IBOutlet weak var singleButton3: UIButton!
    @IBOutlet weak var singleButton4: UIButton!
    
    @IBOutlet weak var multipleStackView: UIStackView!
    @IBOutlet weak var multiLabel1: UILabel!
    @IBOutlet weak var multiLabel2: UILabel!
    @IBOutlet weak var multiLabel3: UILabel!
    @IBOutlet weak var multiLabel4: UILabel!
    
    
    @IBOutlet weak var rangedStackView: UIStackView!
    @IBOutlet weak var rangedLabel1: UILabel!
    @IBOutlet weak var rangedLabel2: UILabel!
    
    @IBOutlet weak var questionProgressView: UIProgressView!
    
    var questions : [Question] = [
        Question (
            text: "A very interesting question",
            type: .ranged,
            answers: [
                Answer(text: "1", type: .hydroHomie),
                Answer(text: "2", type: .casualDrinker),
                Answer(text: "3", type: .alcoholLover),
                Answer(text: "4", type: .anonAlcoholic),
            ]
        ),
        Question (
            text: "What is your favourite beverage?",
            type: .single,
            answers: [
                Answer(text: "Water", type: .hydroHomie),
                Answer(text: "Beer", type: .casualDrinker),
                Answer(text: "Wine", type: .alcoholLover),
                Answer(text: "Vodka", type: .anonAlcoholic),
            ]
        ),
        Question (
            text: "What places do you go to, to drink?",
            type: .multiple,
            answers: [
                Answer(text: "Water Fountain", type: .hydroHomie),
                Answer(text: "Coffee/Pub", type: .casualDrinker),
                Answer(text: "Tavern", type: .alcoholLover),
                Answer(text: "House", type: .anonAlcoholic)
            ]
        )
    ]
    
    var questionIndex = 0
            
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    func updateUI(){
        singleStackView.isHidden = true
        multipleStackView.isHidden = true
        rangedStackView.isHidden = true
        
        navigationItem.title = "Question #\(questionIndex+1)"
        
        let currentQuestion = questions[questionIndex]
        
        switch currentQuestion.type{
        case .single:
            singleStackView.isHidden = false
        case .multiple:
            multipleStackView.isHidden = false
        case .ranged:
            rangedStackView.isHidden = false
            
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
