//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var card1: UIButton!
    @IBOutlet weak var card2: UIButton!
    @IBOutlet weak var card3: UIButton!
    @IBOutlet weak var card4: UIButton!
    @IBOutlet weak var card5: UIButton!
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var restart: UIButton!
    @IBOutlet weak var winsAndLoses: UILabel!
    @IBOutlet weak var fourCards: UIButton!
    @IBOutlet weak var FiveCards: UIButton!
    
    
    
    
    var winCounter = 0
    var lostCounter = 0
    
    var threeCardShuffle: [UIImage] = [
        UIImage(named: "kingCard")!,
        UIImage(named: "threeCard")!,
        UIImage(named: "threeCard")!
    ]
    var fourCardShuffle: [UIImage] = [
        UIImage(named: "kingCard")!,
        UIImage(named: "threeCard")!,
        UIImage(named: "threeCard")!,
         UIImage(named: "threeCard")!
    ]
    var fiveCardShuffle: [UIImage] = [
        UIImage(named: "kingCard")!,
        UIImage(named: "threeCard")!,
        UIImage(named: "threeCard")!,
        UIImage(named: "threeCard")!,
         UIImage(named: "threeCard")!
    ]
    
    //funtion
    override func viewDidLoad() {
        super.viewDidLoad()
        winsAndLoses.isHidden = true
        restart.isHidden = true
        restart.isEnabled = true
        card4.isHidden = true
        card5.isHidden = true
        card4.isEnabled = false
        card5.isEnabled = false
    }
    
   
    @IBAction func flipACrd(_ sender: UIButton) {
        threeCardShuffle = threeCardShuffle.shuffled()
        
        switch sender.tag {
        case 0:
            if threeCardShuffle[0] == UIImage(named: "kingCard")! {
                card1.setImage(UIImage.init(named: "kingCard"), for: .normal)
                Label.text = "You win!"
                card1.isEnabled = false
                restart.isHidden = false
                winCounter += 1
            } else {
                card1.setImage(UIImage.init(named: "threeCard"), for: .normal)
                Label.text = "You you lost!"
                card1.isEnabled = false
                restart.isHidden = false
                lostCounter += 1
            }
            if threeCardShuffle[1] == UIImage(named: "kingCard")! {
                card2.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card2.isEnabled = false
                
            } else {
                card2.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                card2.isEnabled = false
            }
            if threeCardShuffle[2] == UIImage(named: "kingCard")! {
                card3.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card3.isEnabled = false
            } else {
                card3.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                card3.isEnabled = false
            }
        case 1:
            if threeCardShuffle[1] == UIImage(named: "kingCard")! {
                card2.setImage(UIImage.init(named: "kingCard"), for: .normal)
                Label.text = "You win!"
                card2.isEnabled = false
                restart.isHidden = false
                winCounter += 1
            } else {
                card2.setImage(UIImage.init(named: "threeCard"), for: .normal)
                Label.text = "You lost!"
                card2.isEnabled = false
                restart.isHidden = false
                lostCounter += 1
            }
            if threeCardShuffle[0] == UIImage(named: "kingCard")! {
                card1.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card1.isEnabled = false
            } else {
                card1.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                card1.isEnabled = false
            }
            if threeCardShuffle[2] == UIImage(named: "kingCard")! {
                card3.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card3.isEnabled = false
            } else {
                card3.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                card3.isEnabled = false
            }
        case 2:
            if threeCardShuffle[2] == UIImage(named: "kingCard")! {
                card3.setImage(UIImage.init(named: "kingCard"), for: .normal)
                Label.text = "You win!"
                card3.isEnabled = false
                restart.isHidden = false
                winCounter += 1
            } else {
                card3.setImage(UIImage.init(named: "threeCard"), for: .normal)
                Label.text = "You lost!"
                card3.isEnabled = false
                restart.isHidden = false
                lostCounter += 1
            }
            if threeCardShuffle[1] == UIImage(named: "kingCard")! {
                card2.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card2.isEnabled = false
            } else {
                card2.setImage(UIImage.init(named: "threeCard"), for: .normal)
                card2.isEnabled = false
            }
            if threeCardShuffle[0] == UIImage(named: "kingCard")! {
                card1.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card1.isEnabled = false
            } else {
                card1.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                card1.isEnabled = false
            }
        default:
            print("")
        }
    }
    
    @IBAction func fourCardGame(_ sender: UIButton) {
        card4.isEnabled = true
        card4.isHidden = false
        fourCardShuffle = fourCardShuffle.shuffled()
        
        switch sender.tag {
        case 0:
            if fourCardShuffle[0] == UIImage(named: "kingCard")! {
                card1.setImage(UIImage.init(named: "kingCard"), for: .normal)
                Label.text = "You win!"
                card1.isEnabled = false
                restart.isHidden = false
                winCounter += 1
            } else {
                card1.setImage(UIImage.init(named: "threeCard"), for: .normal)
                Label.text = "You you lost!"
                card1.isEnabled = false
                restart.isHidden = false
                lostCounter += 1
            }
            if fourCardShuffle[1] == UIImage(named: "kingCard")! {
                card2.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card2.isEnabled = false
                
            } else {
                card2.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                card2.isEnabled = false
            }
            if fourCardShuffle[2] == UIImage(named: "kingCard")! {
                card3.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card3.isEnabled = false
            } else {
                card3.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                card3.isEnabled = false
            }
            if fourCardShuffle[3] == UIImage(named: "kingCard")! {
                card4.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card4.isEnabled = false
            } else {
                card4.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                card4.isEnabled = false
            }
            
        case 1:
            if fourCardShuffle[1] == UIImage(named: "kingCard")! {
                card2.setImage(UIImage.init(named: "kingCard"), for: .normal)
                Label.text = "You win!"
                card2.isEnabled = false
                restart.isHidden = false
                winCounter += 1
            } else {
                card2.setImage(UIImage.init(named: "threeCard"), for: .normal)
                Label.text = "You lost!"
                card2.isEnabled = false
                restart.isHidden = false
                lostCounter += 1
            }
            if fourCardShuffle[0] == UIImage(named: "kingCard")! {
                card1.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card1.isEnabled = false
            } else {
                card1.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                card1.isEnabled = false
            }
            if fourCardShuffle[2] == UIImage(named: "kingCard")! {
                card3.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card3.isEnabled = false
            } else {
                card3.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                card3.isEnabled = false
            }
            if fourCardShuffle[3] == UIImage(named: "kingCard")! {
                card4.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card4.isEnabled = false
            } else {
                card4.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                card4.isEnabled = false
            }
        case 2:
            if fourCardShuffle[2] == UIImage(named: "kingCard")! {
                card3.setImage(UIImage.init(named: "kingCard"), for: .normal)
                Label.text = "You win!"
                card3.isEnabled = false
                restart.isHidden = false
                winCounter += 1
            } else {
                card3.setImage(UIImage.init(named: "threeCard"), for: .normal)
                Label.text = "You lost!"
                card3.isEnabled = false
                restart.isHidden = false
                lostCounter += 1
            }
            if fourCardShuffle[1] == UIImage(named: "kingCard")! {
                card2.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card2.isEnabled = false
            } else {
                card2.setImage(UIImage.init(named: "threeCard"), for: .normal)
                card2.isEnabled = false
            }
            if fourCardShuffle[0] == UIImage(named: "kingCard")! {
                card1.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card1.isEnabled = false
            } else {
                card1.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                card1.isEnabled = false
            }
            if fourCardShuffle[3] == UIImage(named: "kingCard")! {
                card4.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card4.isEnabled = false
            } else {
            card4.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                card4.isEnabled = false
            }
        case 3:
            if fourCardShuffle[3] == UIImage(named: "kingCard")! {
                card4.setImage(UIImage.init(named: "kingCard"), for: .normal)
                Label.text = "You win!"
                card4.isEnabled = false
                restart.isHidden = false
                winCounter += 1
            } else {
                card4.setImage(UIImage.init(named: "threeCard"), for: .normal)
                Label.text = "You lost!"
                card4.isEnabled = false
                restart.isHidden = false
                lostCounter += 1
            }
            if fourCardShuffle[0] == UIImage(named: "kingCard")! {
                card1.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card1.isEnabled = false
            } else {
                card1.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                card1.isEnabled = false
            }
            if fourCardShuffle[1] == UIImage(named: "kingCard")! {
                card2.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card2.isEnabled = false
                } else {
            card2.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                card2.isEnabled = false
            }
            if fourCardShuffle[2] == UIImage(named: "kingCard")! {
            card3.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card3.isEnabled = false
            } else {
            card3.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                card3.isEnabled = false
            }
            default:
            print("")
        }
        
    }
    
    @IBAction func fivecardgame(_ sender: UIButton!){
        card5.isEnabled = true
        card5.isHidden = false
        fiveCardShuffle = fiveCardShuffle.shuffled()
        
        switch sender.tag {
            case 0:
            if fiveCardShuffle[0] == UIImage(named: "kingCard")! {
                card1.setImage(UIImage.init(named: "kingCard"), for: .normal)
                Label.text = "You win!"
                card1.isEnabled = false
                restart.isHidden = false
                winCounter += 1
            } else {
                card1.setImage(UIImage.init(named: "threeCard"), for: .normal)
                Label.text = "You you lost!"
                card1.isEnabled = false
                restart.isHidden = false
                lostCounter += 1
            }
            if fiveCardShuffle[1] == UIImage(named: "kingCard")! {
                card2.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card2.isEnabled = false
                
            } else {
                card2.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                card2.isEnabled = false
            }
            if fiveCardShuffle[2] == UIImage(named: "kingCard")! {
                card3.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card3.isEnabled = false
            } else {
                card3.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                card3.isEnabled = false
            }
            if fiveCardShuffle[3] == UIImage(named: "kingCard")! {
                card4.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card4.isEnabled = false
            } else {
                card4.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                card4.isEnabled = false
            }
            if fiveCardShuffle[4] == UIImage(named: "kingCard")! {
                card5.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card5.isEnabled = false
            } else {
                card5.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                card5.isEnabled = false
            }
            
            case 1:
            if fiveCardShuffle[1] == UIImage(named: "kingCard")! {
                card2.setImage(UIImage.init(named: "kingCard"), for: .normal)
                Label.text = "You win!"
                card2.isEnabled = false
                restart.isHidden = false
                winCounter += 1
            } else {
                card2.setImage(UIImage.init(named: "threeCard"), for: .normal)
                Label.text = "You lost!"
                card2.isEnabled = false
                restart.isHidden = false
                lostCounter += 1
            }
            if fiveCardShuffle[0] == UIImage(named: "kingCard")! {
                card1.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card1.isEnabled = false
            } else {
                card1.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                card1.isEnabled = false
            }
            if fiveCardShuffle[2] == UIImage(named: "kingCard")! {
                card3.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card3.isEnabled = false
            } else {
                card3.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                card3.isEnabled = false
            }
            if fiveCardShuffle[3] == UIImage(named: "kingCard")! {
                card4.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card4.isEnabled = false
            } else {
                card4.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                card4.isEnabled = false
            }
            if fiveCardShuffle[4] == UIImage(named: "kingCard")! {
                card5.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card5.isEnabled = false
            } else {
                card5.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                card5.isEnabled = false
            }
            case 2:
            if fiveCardShuffle[2] == UIImage(named: "kingCard")! {
                card3.setImage(UIImage.init(named: "kingCard"), for: .normal)
                Label.text = "You win!"
                card3.isEnabled = false
                restart.isHidden = false
                winCounter += 1
            } else {
                card3.setImage(UIImage.init(named: "threeCard"), for: .normal)
                Label.text = "You lost!"
                card3.isEnabled = false
                restart.isHidden = false
                lostCounter += 1
            }
            if fiveCardShuffle[1] == UIImage(named: "kingCard")! {
                card2.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card2.isEnabled = false
            } else {
                card2.setImage(UIImage.init(named: "threeCard"), for: .normal)
                card2.isEnabled = false
            }
            if fiveCardShuffle[0] == UIImage(named: "kingCard")! {
                card1.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card1.isEnabled = false
            } else {
                card1.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                card1.isEnabled = false
            }
            if fiveCardShuffle[3] == UIImage(named: "kingCard")! {
                card4.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card4.isEnabled = false
            } else {
                card4.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                card4.isEnabled = false
            }
            if fiveCardShuffle[4] == UIImage(named: "kingCard")! {
                card5.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card5.isEnabled = false
            } else {
                card5.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                card5.isEnabled = false
            }
            case 3:
            if fiveCardShuffle[3] == UIImage(named: "kingCard")! {
                card4.setImage(UIImage.init(named: "kingCard"), for: .normal)
                Label.text = "You win!"
                card4.isEnabled = false
                restart.isHidden = false
                winCounter += 1
            } else {
                card4.setImage(UIImage.init(named: "threeCard"), for: .normal)
                Label.text = "You lost!"
                card4.isEnabled = false
                restart.isHidden = false
                lostCounter += 1
            }
            if fiveCardShuffle[0] == UIImage(named: "kingCard")! {
                card1.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card1.isEnabled = false
            } else {
                card1.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                card1.isEnabled = false
            }
            if fiveCardShuffle[1] == UIImage(named: "kingCard")! {
                card2.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card2.isEnabled = false
            } else {
                card2.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                card2.isEnabled = false
            }
            if fiveCardShuffle[2] == UIImage(named: "kingCard")! {
                card3.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card3.isEnabled = false
            } else {
                card3.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                card3.isEnabled = false
            }
            if fiveCardShuffle[4] == UIImage(named: "kingCard")! {
                card5.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card5.isEnabled = false
            } else {
                card5.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                card5.isEnabled = false
            }
        case 4:
            if fiveCardShuffle[4] == UIImage(named: "kingCard")! {
                card5.setImage(UIImage.init(named: "kingCard"), for: .normal)
                Label.text = "You win!"
                card5.isEnabled = false
                restart.isHidden = false
                winCounter += 1
            } else {
                card5.setImage(UIImage.init(named: "threeCard"), for: .normal)
                Label.text = "You lost!"
                card5.isEnabled = false
                restart.isHidden = false
                lostCounter += 1
            }
            if fiveCardShuffle[3] == UIImage(named: "kingCard")! {
                card4.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card4.isEnabled = false
            } else {
                card4.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                card4.isEnabled = false
            }
            if fiveCardShuffle[2] == UIImage(named: "kingCard")! {
                card3.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card3.isEnabled = false
            } else {
                card3.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                card3.isEnabled = false
            }
            if fiveCardShuffle[1] == UIImage(named: "kingCard")! {
                card2.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card2.isEnabled = false
            } else {
                card2.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                card2.isEnabled = false
            }
            if fiveCardShuffle[0] == UIImage(named: "kingCard")! {
                card1.setImage(UIImage.init(named: "kingCard"), for: .normal)
                card1.isEnabled = false
            } else {
                card1.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
                card1.isEnabled = false
            }
            default:
            print("")
        }
    }
    
    
    
    
    @IBAction func restartCards(_ sender: UIButton!) {
        card1.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        card2.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        card3.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
         card4.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
         card5.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        restart.isHidden = true
        return
    }
    @IBAction func fiverestartFuntcion(_ sender: UIButton!) {
        winsAndLoses.text = "wins: \(winCounter) loses: \(lostCounter)"
        winsAndLoses.isHidden = false
        restart.isHidden = true
        restart.isEnabled = true
        card1.isEnabled = true
        card2.isEnabled = true
        card3.isEnabled = true
        card4.isEnabled = true
        card5.isEnabled = true
        return
    }
    
    @IBAction func fourRestart(_ sender: UIButton!) {
            winsAndLoses.text = "wins: \(winCounter) loses: \(lostCounter)"
            winsAndLoses.isHidden = false
            restart.isHidden = true
            restart.isEnabled = true
            card1.isEnabled = true
            card2.isEnabled = true
            card3.isEnabled = true
            card4.isEnabled = true
        }
    
}

