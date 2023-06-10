//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    let stories = [
        Story(t: "You see a fork in the road.", c1: "Take a left.", c2: "Take a right."),
        Story(t: "You see a tiger.", c1: "Shout for help.", c2: "Play dead."),
        Story(t: "You find a treasure chest.", c1: "Open it.", c2: "Check for traps.")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI(0)

    }


    @IBAction func choiceMade(_ sender: UIButton) {
        if sender.currentTitle == stories[0].choice1 {
            updateUI(1)
        } else {
            updateUI(2)
        }
    }
    
    func updateUI(_ storyNumber: Int) {
        storyLabel.text = stories[storyNumber].title
        choice1Button.setTitle(stories[storyNumber].choice1, for: .normal)
        choice2Button.setTitle(stories[storyNumber].chouce2, for: .normal)
    }
}

