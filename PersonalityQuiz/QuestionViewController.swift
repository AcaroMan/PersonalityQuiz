//
//  QuestionViewController.swift
//  PersonalityQuiz
//
//  Created by mac on 13/10/2022.
//

import UIKit

class QuestionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
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
                Answer(text: "Coffee/Pub, type: .casualDrinker),
                Answer(text: "Tavern", type: .alcoholLover),
                Answer(text: "House", type: .anonAlcoholic),
            ]
        )


    ]
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
