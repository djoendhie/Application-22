//
//  IndoTableViewCell.swift
//  EngDict
//
//  Created by SMK IDN MI on 11/22/17.
//  Copyright © 2017 Djoendhie. All rights reserved.
//

import UIKit

class IndoTableViewCell: UITableViewCell {
    @IBOutlet weak var labelIndo1: UILabel!
    @IBOutlet weak var labelEng1: UILabel!
    @IBOutlet weak var laeblNo1: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
