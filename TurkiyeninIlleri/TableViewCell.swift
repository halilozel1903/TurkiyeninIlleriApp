//
//  TableViewCell.swift
//  TurkiyeninIlleri
//
//  Created by Halil Özel on 25.10.2018.
//  Copyright © 2018 Halil Özel. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var cityIcon: UIImageView!
    @IBOutlet weak var cityName: UILabel!
    @IBOutlet weak var cityNumber: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
