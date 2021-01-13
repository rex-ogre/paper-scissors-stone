//
//  ViewController.swift
//  RPS
//
//  Created by 陳冠雄 on 2021/1/1.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Subviews
    
    @IBOutlet weak var enemyState: UILabel!
    @IBOutlet weak var GameStateNow: UILabel!
    @IBOutlet weak var stone: UIButton!
    @IBOutlet weak var paper: UIButton!
    @IBOutlet weak var scissors: UIButton!
    @IBOutlet weak var playbutton: UIButton!
    @IBOutlet var background: UIView!
    
    // MARK: - Properties
    
    var mystate = Sign.scissors
    var GameResult = GameState.begin
    var enemystate = Sign.scissors
    
    // MARK: - Actions
    
    @IBAction func PlayAgain(_ sender: Any) {
        enemyState.text = "🤖"
        background.backgroundColor = UIColor.white
        playbutton.isHidden = true
        GameStateNow.text = "Shall we?"
    }
    
    @IBAction func Stonegesture(_ sender: Any) {
        playbutton.isHidden = false
        mystate = Sign.stone
        GameStateNow.text = mystate.matchResult(enemySign: randomSign())
        switch GameStateNow.text {
        case "win":
            enemyState.text = "✌️"
            background.backgroundColor = UIColor.gray
        case "lose" :
            enemyState.text = "✋"
            background.backgroundColor = UIColor.red
        default:
            enemyState.text = "👊"
            background.backgroundColor = UIColor.green
        }
        
    }
    
    @IBAction func Papergesture(_ sender: Any) {
        playbutton.isHidden = false
        mystate = Sign.paper
        GameStateNow.text = mystate.matchResult(enemySign: randomSign())
        
        switch GameStateNow.text {
        case "win":
            enemyState.text = "👊"
            background.backgroundColor = UIColor.gray
        case "lose" :
            enemyState.text = "✌️"
            background.backgroundColor = UIColor.red
        default:
            enemyState.text = "✋"
            background.backgroundColor = UIColor.green
        }
    }
    
    @IBAction func Scissorsgesture(_ sender: Any) {
        playbutton.isHidden = false
        mystate = Sign.scissors
        GameStateNow.text =    mystate.matchResult(enemySign: randomSign())
        switch GameStateNow.text {
        case "win":
            enemyState.text = "✋"
            background.backgroundColor = UIColor.gray
        case "lose" :
            enemyState.text = "👊"
            background.backgroundColor = UIColor.red
        default:
            enemyState.text = "✌️"
            background.backgroundColor = UIColor.green
        }
    }
    
}

