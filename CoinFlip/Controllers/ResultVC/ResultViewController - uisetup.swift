//
//  ResultViewController - uisetup.swift
//  CoinFlip
//
//  Created by Max Miranda on 2/9/19.
//  Copyright © 2019 ___MaxAMiranda___. All rights reserved.
//

import UIKit

extension ResultViewController {
    func displayLabel(_ result: String) {
        resultLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - 100, height: 300))
        resultLabel.font = UIFont(name: "Avenir", size: 50)
        resultLabel.center = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
        resultLabel.textAlignment = .center
        resultLabel.lineBreakMode = .byWordWrapping
        resultLabel.numberOfLines = 0
        if let randomFaceUnwrapped = randomFace {
            resultLabel.text = "You were \(result) It was \(randomFaceUnwrapped)"
        } else {
            resultLabel.text = "The coin fell into the drain, try again!"
        }
        view.addSubview(resultLabel)
    }
    
    func changeBackground(_ color: UIColor) {
        view.backgroundColor = color
    }
    
    func setupTableView() {
        var navHeight: CGFloat = self.navigationController!.navigationBar.frame.maxY
        
        var tableView = UITableView(frame: CGRect(x: 0, y: resultLabel.frame.maxY + 100, width: view.frame.width, height: view.frame.maxY - (resultLabel.frame.maxY+115)))
        tableView.register(ResultsCell.self, forCellReuseIdentifier: "Results")
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
    }
}
