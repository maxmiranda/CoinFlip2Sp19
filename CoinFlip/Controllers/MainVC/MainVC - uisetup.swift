//
//  MainVC - uisetup.swift
//  CoinFlip
//
//  Created by Max Miranda on 2/9/19.
//  Copyright © 2019 ___MaxAMiranda___. All rights reserved.
//

import UIKit

extension MainVC {
    func setupLabel() {
        headsOrTailsLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 250, height: 50))
        headsOrTailsLabel.center = CGPoint(x: view.frame.width / 2, y: 50)
        
        headsOrTailsLabel.font = UIFont(name: "Avenir", size: 25)
        headsOrTailsLabel.text = "Pick Heads or Tails!"
        headsOrTailsLabel.textAlignment = .center
        view.addSubview(headsOrTailsLabel)
        
    }
    
    func setupHeads() {
        headsImageView  =  UIImageView(frame: CGRect(x: view.frame.width / 2 - 100, y: headsOrTailsLabel.frame.maxY + 60, width: 200, height: 200))
        headsImageView.center = CGPoint(x: view.frame.width / 2, y: headsOrTailsLabel.frame.maxY + 150)
        headsImageView.image = UIImage(named: "heads")
        headsImageView.contentMode = .scaleAspectFit
        view.addSubview(headsImageView)
        
        headsButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.width / 2, height: 60))
        headsButton.center = CGPoint(x: view.frame.width / 2, y: headsImageView.frame.maxY + 70)
        headsButton.setTitle("Heads", for: .normal)
        headsButton.layer.cornerRadius = 20
        headsButton.backgroundColor = .blue
        headsButton.addTarget(self, action: #selector(headsClicked), for: .touchUpInside)
        view.addSubview(headsButton)
    }
    
    func setupTails() {
        tailsImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        tailsImageView.center = CGPoint(x: view.frame.width / 2, y: headsButton.frame.maxY + 160)
        tailsImageView.image = UIImage(named: "tails")
        tailsImageView.contentMode = .scaleAspectFit
        view.addSubview(tailsImageView)
        
        tailsButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.width / 2, height: 60))
        tailsButton.center = CGPoint(x: view.frame.width / 2, y: tailsImageView.frame.maxY + 70)
        tailsButton.setTitle("Tails", for: .normal)
        tailsButton.layer.cornerRadius = 20
        tailsButton.backgroundColor = .blue
        tailsButton.addTarget(self, action: #selector(tailsClicked), for: .touchUpInside)
        view.addSubview(tailsButton)
    }
}
