//
//  ViewController.swift
//  Destiny
//
//  Created by Under True on 07/11/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        choice1Button.titleLabel?.adjustsFontSizeToFitWidth = true
        choice2Button.titleLabel?.adjustsFontSizeToFitWidth = true
        
        updateUI()

    }

    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI()
    }
    
    func updateUI() -> Void {
        let currentStory = storyBrain.getCurrentStory()
        storyLabel.text = currentStory.title
        choice1Button.setTitle(currentStory.choice1, for: .normal)
        choice2Button.setTitle(currentStory.choice2, for: .normal)
    }
    
}

