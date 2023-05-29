//
//  DetailFoodStatusInfoCell.swift
//  FoodDetectApp
//
//  Created by Aung Ko Ko on 24/05/2023.
//

import UIKit
import Lottie

class DetailFoodStatusInfoCell: UITableViewCell {

    @IBOutlet weak var goodFoodIcon: LottieAnimationView!
    @IBOutlet weak var badFoodIcon: LottieAnimationView!
    @IBOutlet weak var normalFoodIcon: LottieAnimationView!
    @IBOutlet weak var foodStatusLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
