//
//  NounTableViewCell.swift
//  EngDict
//
//  Created by SMK IDN MI on 11/22/17.
//  Copyright © 2017 Djoendhie. All rights reserved.
//

import UIKit

class NounTableViewCell: UITableViewCell {
    @IBOutlet weak var labelEng3: UILabel!
    @IBOutlet weak var labelIndo3: UILabel!
    @IBOutlet weak var labelNo3: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
