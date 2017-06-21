//
//  AlertsViewController.swift
//  HIGExampleApp
//
//  Created by Dev Team on 6/19/17.
//  Copyright © 2017 Pluralsight. All rights reserved.
//

import UIKit

class AlertsViewController: UIViewController {
    
    
    @IBAction func toggleAlert(_ sender: Any) {
        let alert = UIAlertController(title: "Alert Title", message: "This is an alert message", preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "Default Action", style: .default, handler: nil)
        let destructiveAction = UIAlertAction(title: "Destructive Action", style: .destructive, handler: nil)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(defaultAction)
        alert.addAction(destructiveAction)
        alert.addAction(cancelAction)
        
        present(alert, animated: true, completion: nil)
    }

}
