//
//  RatingCell.swift
//  Hello_lesson1
//
//  Created by Smagul Negmatov on 26.07.2023.
//

import UIKit

class RatingCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet var name: UILabel!
    @IBOutlet var Score: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
