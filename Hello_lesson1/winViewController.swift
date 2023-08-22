//
//  winViewController.swift
//  Hello_lesson1
//
//  Created by Smagul Negmatov on 02.08.2023.
//

import UIKit

class winViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var WinTextField: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "winner"
        {
            var index:Int?
            for i in RatingDB.arrayRating.indices {
                if RatingDB.arrayRating[i].name == WinTextField.text {
                    index = i
                }
            }
            if index != nil {
                RatingDB.arrayRating[index!].score += 10
            }
            else {
                RatingDB.arrayRating.append(Rating(name: WinTextField.text!, score: 10))
            }
        }
    }
   
}
