//
//  SteppersViewController.swift
//  HIGExampleApp
//
//  Created by Dev Team on 6/19/17.
//  Copyright © 2017 Pluralsight. All rights reserved.
//

import UIKit

class SteppersViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func stepperChange(_ sender: UIStepper) {
        label.text = String(Int(sender.value))
    }
}
