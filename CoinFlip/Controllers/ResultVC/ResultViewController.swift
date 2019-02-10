//
//  ResultViewController.swift
//  CoinFlip
//
//  Created by Max Miranda on 9/5/18.
//  Copyright © 2018 ___MaxAMiranda___. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var faceSelected : String!
    var randomFace : String!

    var resultLabel : UILabel!

    var results: [[String]]!
    
   override func viewDidLoad() {
        super.viewDidLoad()
        
        let randomInt = arc4random_uniform(2)
        if (randomInt > UInt32(0.5)) {
            randomFace = "Heads"
        } else {
            randomFace = "Tails"
        }
        var result : String
        if (randomFace == faceSelected) {
            result = "Correct!"
            displayLabel(result)
            changeBackground(.green)
        } else {
            result = "Wrong!"
            displayLabel(result)
            changeBackground(.red)
        }
        results.append([faceSelected, result])
        setupTableView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController!.isNavigationBarHidden = false
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        if let rootVC = self.navigationController!.viewControllers[0] as? MainVC {
            rootVC.results = results
        }
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
