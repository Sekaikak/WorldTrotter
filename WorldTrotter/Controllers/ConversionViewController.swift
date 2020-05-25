//
//  ViewController.swift
//  WorldTrotter
//
//  Created by Kai on 5/23/20.
//  Copyright © 2020 Kai. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController {
    
    override func viewDidLoad() {
        print("ConversionVC")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(false)
        view.backgroundColor = UIColor(displayP3Red: CGFloat(Float.random(in: 0.0...1.0)), green: CGFloat(Float.random(in: 0.0...1.0)), blue: CGFloat(Float.random(in: 0.0...1.0)), alpha: CGFloat(Float.random(in: 0.0...1.0)))
        
    }

    
}

