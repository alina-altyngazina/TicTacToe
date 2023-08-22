//
//  RatingViewController.swift
//  Hello_lesson1
//
//  Created by Smagul Negmatov on 26.07.2023.
//

import UIKit

class RatingViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return RatingDB.arrayRating.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! RatingCell
        cell.name.text = RatingDB.arrayRating[indexPath.row].name
        cell.Score.text = String(RatingDB.arrayRating[indexPath.row].score)
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ratingTableView.delegate = self
        ratingTableView.dataSource = self
        RatingDB.arrayRating.sort{$0.score>$1.score}
    }
    
  
    
    

    @IBOutlet var ratingTableView: UITableView!
    

}

