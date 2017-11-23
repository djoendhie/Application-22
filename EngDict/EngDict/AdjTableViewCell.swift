//
//  AdjTableViewCell.swift
//  EngDict
//
//  Created by SMK IDN MI on 11/22/17.
//  Copyright © 2017 Djoendhie. All rights reserved.
//

import UIKit

class AdjTableViewCell: UITableViewCell {
    @IBOutlet weak var labelIndo4: UILabel!
    @IBOutlet weak var labelNo4: UILabel!
    @IBOutlet weak var labelEng4: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
