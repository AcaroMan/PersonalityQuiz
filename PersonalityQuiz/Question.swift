//
//  Question.swift
//  PersonalityQuiz
//
//  Created by mac on 19/10/2022.
//

import Foundation


struct Question{
    var text: String
    var type: ResponseType
    var answers:[Answer]
}

enum ResponseType {
    case single,multiple,ranged
}

struct Answer{
    var text: String
    var type: AlcoholicType
}

enum AlcoholicType{
    case hydroHomie, casualDrinker,alcoholLover,anonAlcoholic
    var definition:String{
        switch self{
        case .hydroHomie:
            return "You dont drink much. Only drink your 1.5 liter+o of daily water and despise anyone who drinks anything else."
        case .casualDrinker:
            return "You like to casually drink those soft drinks like beer. You might drink a few of them or just go with 15 pints in a row."
        case .alcoholLover:
            return "Damn this wine is really good- you say to yourself while you eat your meal because you cant a single meal without drinking a few glasses."
        case .anonAlcoholic:
            return "What a sad fucker you must be. Drinking alone those full glasses of vodka while feeling depressed about life."
        }
    }
}
