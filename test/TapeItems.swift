//
//  TapeItims.swift
//  test
//
//  Created by Айк Шатворян on 17.08.2020.
//  Copyright © 2020 Hike Shatvoryan. All rights reserved.
//

import UIKit

class TapeItems: UITableViewCell {
 
    @IBOutlet weak var titleLable: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    
    public func setTitle(title: String){
        titleLable.text = title
    }
}



