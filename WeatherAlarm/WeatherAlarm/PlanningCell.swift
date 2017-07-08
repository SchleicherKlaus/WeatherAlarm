//
//  PlanningTableViewCell.swift
//  WeatherAlarm
//
//  Created by Klaus Schleicher on 08.07.17.
//  Copyright © 2017 Klaus Schleicher. All rights reserved.
//

import UIKit

class PlanningCell: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var kindOfShooting: UILabel!
    @IBOutlet weak var loacationName: UILabel!
    @IBOutlet weak var dateOfShooting: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
