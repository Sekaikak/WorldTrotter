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
        view.backgroundColor = UIColor.systemBackground
        let fahLabel = UILabel()
        fahLabel.text = "212"
        fahLabel.font = fahLabel.font.withSize(70)
        fahLabel.textColor = UIColor(named: "burntOrange")
        
        let secondLine = UILabel()
        secondLine.text = "degrees Fahrenheit"
        secondLine.textColor = UIColor(named: "burntOrange")
        secondLine.font = secondLine.font.withSize(36)
        
        let thirdLine = UILabel()
        thirdLine.text = "is really"
        thirdLine.font = thirdLine.font.withSize(36)
        
        let celLabel = UILabel()
        celLabel.text = "100"
        celLabel.font = celLabel.font.withSize(70)
        celLabel.textColor = UIColor(named: "burntOrange")
        
        let lastLine = UILabel()
        lastLine.text = "degrees Celsius"
        lastLine.textColor = UIColor(named: "burntOrange")
        lastLine.font = lastLine.font.withSize(36)
        
        constraintCustom(for: fahLabel, from: view.safeAreaLayoutGuide.topAnchor)
        constraintCustom(for: secondLine, from: fahLabel.bottomAnchor)
        constraintCustom(for: thirdLine, from: secondLine.bottomAnchor)
        constraintCustom(for: celLabel, from: thirdLine.bottomAnchor)
        constraintCustom(for: lastLine, from: celLabel.bottomAnchor)
    }
    func constraintCustom(for labelItSelf: UILabel, from labelConsFrom: NSLayoutAnchor<NSLayoutYAxisAnchor>) {
        labelItSelf.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(labelItSelf)
        labelItSelf.topAnchor.constraint(lessThanOrEqualTo: labelConsFrom, constant: 8).isActive = true
        labelItSelf.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}

