//
//  File.swift
//  CoinFlip
//
//  Created by Max Miranda on 2/9/19.
//  Copyright © 2019 ___MaxAMiranda___. All rights reserved.
//

import UIKit

extension ResultViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return results.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Results", for: indexPath)
            as! ResultsCell
        cell.awakeFromNib()
        cell.choiceLabel.text = results[indexPath[1]][0]
        cell.resultLabel.text = results[indexPath[1]][1]
        return cell
    }
}
