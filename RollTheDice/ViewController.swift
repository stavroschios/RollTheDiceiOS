//
//  ViewController.swift
//  RollTheDice
//
//  Created by Stavros Pachoundakis on 2021-01-10.
//  All rights reserved. 
//

import UIKit



class ViewController: UIViewController {

    // IBOutlet-> interface builder outlet
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
//
//    var leftDiceNumber = 1
//    var rightDiceNumber = 5
    
    
    // IBAction -> interface builder action
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceArray = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
        var score = 0
       
//        diceImageViewOne.image = diceArray[Int.random(in: 0...5)]
//        diceImageViewTwo.image = diceArray[Int.random(in: 0...5)]
        
        diceImageViewOne.image = diceArray.randomElement()
        diceImageViewTwo.image = diceArray.randomElement()
        
        score += Int.random(in: 1...999999)
        print(score)
        
        
        
    }
}


