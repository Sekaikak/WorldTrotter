//
//  ViewController.swift
//  WorldTrotter
//
//  Created by Kai on 5/23/20.
//  Copyright © 2020 Kai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.frame
        gradientLayer.colors = [
            UIColor.red.cgColor,
            UIColor.yellow.cgColor,
            UIColor.green.cgColor,
            UIColor.blue.cgColor
        ]
        
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
}

