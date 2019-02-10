//
//  ResultsCell.swift
//  CoinFlip
//
//  Created by Max Miranda on 2/9/19.
//  Copyright © 2019 ___MaxAMiranda___. All rights reserved.
//

import UIKit

class ResultsCell: UITableViewCell {
    var choiceLabel : UILabel!
    var resultLabel : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        choiceLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: contentView.frame.height))
        choiceLabel.center = CGPoint(x: 100, y: contentView.frame.height / 2)
        contentView.addSubview(choiceLabel)
        
        resultLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: contentView.frame.height))
        resultLabel.center = CGPoint(x: 210, y: contentView.frame.height / 2)
        contentView.addSubview(resultLabel)
    }

}
