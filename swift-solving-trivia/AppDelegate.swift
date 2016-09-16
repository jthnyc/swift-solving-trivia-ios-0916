//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
     
    func solveTrivia(combination: [String: String]) -> String {
        
        var theAnswer: String = " "
        
        for (states, capitals) in combination {
            let alphabetsStates = Array(states.lowercaseString.characters)
            let alphabetsCapitals = Array(capitals.lowercaseString.characters)
            
            let intersection = Array(Set(alphabetsStates).intersect(Set(alphabetsCapitals)))
            
            if intersection.isEmpty {
                theAnswer = states
            } 
            
        }
           return theAnswer
    }
}