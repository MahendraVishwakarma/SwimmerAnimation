//
//  SwimmerCell.swift
//  SwimmerDemo
//
//  Created by Mahendra Vishwakarma on 03/09/20.
//  Copyright © 2020 Mahendra Vishwakarma. All rights reserved.
//

import UIKit

class SwimmerCell: UITableViewCell {

    @IBOutlet weak var txtLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        //txtLabel.startAnimation()
        // Initialization code
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
       
    }
    
    func setdata() {
        self.txtLabel.stopAnimatiom()
    }
    
}
