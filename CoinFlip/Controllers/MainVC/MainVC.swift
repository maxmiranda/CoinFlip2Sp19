//
//  ViewController.swift
//  CoinFlip
//
//  Created by Max Miranda on 9/5/18.
//  Copyright © 2018 ___MaxAMiranda___. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    var headsOrTailsLabel : UILabel!
    var headsImageView : UIImageView!
    var tailsImageView : UIImageView!
    var headsButton: UIButton!
    var tailsButton: UIButton!
    
    var faceSelected: String!
    
    var results = [[String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupLabel()
        setupHeads()
        setupTails()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController!.isNavigationBarHidden = true
    }
    
    @objc func headsClicked() {
        faceSelected = "Heads"
        performSegue(withIdentifier: "toResults", sender: self)
    }
    @objc func tailsClicked() {
        faceSelected = "Tails"
        performSegue(withIdentifier: "toResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let resultVC = segue.destination as? ResultViewController {
            resultVC.faceSelected = faceSelected
            resultVC.results = results
        }
    }


}

