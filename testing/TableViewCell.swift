//
//  TableViewCell.swift
//  testing
//
//  Created by Anil on 30/05/15.
//  Copyright (c) 2015 Variya Soft Solutions. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {


    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var tmpView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
