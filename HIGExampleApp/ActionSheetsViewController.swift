//
//  ActionSheetsViewController.swift
//  HIGExampleApp
//
//  Created by Dev Team on 6/19/17.
//  Copyright © 2017 Pluralsight. All rights reserved.
//

import UIKit

class ActionSheetsViewController: UIViewController {

    @IBAction func toggleActionSheet(_ sender: UIButton) {
        let actionSheet = UIAlertController(title: "Action Sheet Title", message: "This is an action sheet message", preferredStyle: .actionSheet)
        
        let defaultAction = UIAlertAction(title: "Default Action", style: .default, handler: nil)
        let destructiveAction = UIAlertAction(title: "Destructive Action", style: .destructive, handler: nil)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        actionSheet.addAction(defaultAction)
        actionSheet.addAction(destructiveAction)
        actionSheet.addAction(cancelAction)
        actionSheet.popoverPresentationController?.sourceRect = sender.frame
        actionSheet.popoverPresentationController?.sourceView = view
        
        present(actionSheet, animated: true, completion: nil)
    }
}
