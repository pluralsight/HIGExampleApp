//
//  MasterViewController.swift
//  HIGExampleApp
//
//  Created by Dev Team on 6/12/17.
//  Copyright © 2017 Pluralsight. All rights reserved.
//

import UIKit

class MasterTableViewController: UITableViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else { return }
        guard let masterSubViewController = segue.destination as? MasterSubTableViewController else { return }
        masterSubViewController.higElement = HIGElement(rawValue: identifier)
    }
    
}
