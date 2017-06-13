//
//  MasterSubTableViewController.swift
//  HIGExampleApp
//
//  Created by Dev Team on 6/13/17.
//  Copyright © 2017 Pluralsight. All rights reserved.
//

import UIKit

class MasterSubTableViewController: UITableViewController {

    var higElement: HIGElement? {
        didSet {
            if let element = higElement {
                elementDataSource = HIGElementDataSourceFactory.dataSource(for: element)
            } else {
                elementDataSource = nil
            }
            
            title = higElement?.displayTitle
        }
    }
    
    fileprivate var elementDataSource: HIGElementDataSource? {
        didSet {
            loadViewIfNeeded()
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elementDataSource?.numberOfItems ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = elementDataSource?.title(at: indexPath.row)
        return cell
    }

}
