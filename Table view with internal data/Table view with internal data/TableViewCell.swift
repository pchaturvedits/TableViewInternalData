//
//  TableViewCell.swift
//  Table view with internal data
//
//  Created by Manish Chaturvedi on 7/17/19.
//  Copyright © 2019 Manish Chaturvedi. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

   
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var charImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
