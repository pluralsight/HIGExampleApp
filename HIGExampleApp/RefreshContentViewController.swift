//
//  RefreshContentViewController.swift
//  HIGExampleApp
//
//  Created by Dev Team on 6/19/17.
//  Copyright © 2017 Pluralsight. All rights reserved.
//

import UIKit

class RefreshContentViewController: UITableViewController {
    
    var numberOfRows = 1

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfRows
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "rowCell", for: indexPath)
        cell.textLabel?.text = String(describing: indexPath.row + 1)
        return cell
    }

    @IBAction func refresh(_ sender: UIRefreshControl) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { 
            sender.endRefreshing()
            self.numberOfRows += 1
            self.tableView.reloadData()
        }
    }
}
