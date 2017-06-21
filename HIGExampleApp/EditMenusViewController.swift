//
//  EditMenusViewController.swift
//  HIGExampleApp
//
//  Created by Dev Team on 6/19/17.
//  Copyright © 2017 Pluralsight. All rights reserved.
//

import UIKit

class EditMenusViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let menuItem = UIMenuItem(title: NSLocalizedString("Custom menu", comment: ""), action:  #selector(doNothing(_:)))
        let menuController = UIMenuController.shared
        menuController.menuItems = [menuItem]
    }
    
    func doNothing(_ sender: Any?) { }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        UIMenuController.shared.menuItems = []
    }
}
