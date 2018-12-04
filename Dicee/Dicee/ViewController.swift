//
//  ViewController.swift
//  Dicee
//
//  Created by Jaime Sebastian Ginorio Ramirez on 12/3/18.
//  Copyright © 2018 Jaime Sebastian Ginorio Ramirez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Dice picture array
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    
    //ImageView variables
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDice()
    }

    //When user shake phone call the 'updatedDice()' method
    override func motionEnded(_ motion: UIEvent.EventSubtype,with event: UIEvent?){updateDice()}
    
    //Roll the dices
    @IBAction func rollButtonPressed(_ sender: UIButton) {updateDice()}
    
    //Roll the dices
    func updateDice(){
        diceImageView1.image = UIImage(named: diceArray[randomNumber()])
        diceImageView2.image = UIImage(named: diceArray[randomNumber()])
    }
    
    //Generate random number between 0-5
    func randomNumber() -> Int {return Int.random(in: 0 ... 5)}
    
}

