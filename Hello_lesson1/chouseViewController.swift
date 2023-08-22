//
//  chouseViewController.swift
//  Hello_lesson1
//
//  Created by Smagul Negmatov on 02.08.2023.
//

import UIKit

class chouseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueWithAI" {
            let destination = segue.destination as! ViewController
            destination.game.isPlayAI = true
        }
        
    }


}
