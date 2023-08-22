//
//  ViewController.swift
//  Hello_lesson1
//
//  Created by Smagul Negmatov on 05.07.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet var labelWinner: UILabel!
    var game = TicTacToe()
    @IBOutlet var arrayButtons: [UIButton]!
    
    @IBAction func buttonClick(_ sender: UIButton) {
        let index = arrayButtons.firstIndex(of: sender)!
        game.writeXO(at: index)
        updateView()
        sender.backgroundColor = UIColor(red: 255/255, green: 198/255, blue: 172/255, alpha: 1.0)
       
    }
    @IBAction func restart(_ sender: UIButton) {
        game.restart()
        updateView()
        labelWinner.text = ""
    }
    func updateView() {
        for i in arrayButtons.indices {
            let button = arrayButtons[i]
            let card = game.XOs[i]
            if card.isFaceUp{
                button.setTitle(card.label, for: .normal)
                button.isEnabled = false
            }
            else {
                button.setTitle("", for: .normal)
                button.isEnabled = true
            }
        }
        if let winner = game.winGame() {
            labelWinner.text = "Winner :\(winner)"
            for i in arrayButtons {
                i.isEnabled = false
            }
        }
    }
    
}

