//
//  Model.swift
//  LiveCycle
//
//  Created by Zakirov Tahir on 15.01.2021.
//

import Foundation


struct States {
    var stateImage: String
    var stateDescriptions: String
    var colorBack: String
    
    static let states = [
        States(stateImage: "1", stateDescriptions: "Ну что? За работу!", colorBack: "1"),
        States(stateImage: "2", stateDescriptions: "Все отлично, пока живой", colorBack: "1"),
        States(stateImage: "3", stateDescriptions: "Ураа, на обед :)", colorBack: "1"),
        States(stateImage: "4", stateDescriptions: "После вкусного обеда, работать осталось 4 часа", colorBack: "1"),
        States(stateImage: "5", stateDescriptions: "Ого, больше половины рабочего дня!", colorBack: "1"),
        States(stateImage: "6", stateDescriptions: "Так, чет бьют хедшотом, ваншотом, камшотом", colorBack: "1"),
        States(stateImage: "7", stateDescriptions: "Ой, почти умираю, осталось немного", colorBack: "1"),
        States(stateImage: "8", stateDescriptions: "Ваш персонаж мертв, иди домой", colorBack: "1"),
        States(stateImage: "1", stateDescriptions: "На восстановлении", colorBack: "1")
    ]
}
