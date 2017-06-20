//
//  PopoverViewController.swift
//  HIGExampleApp
//
//  Created by Kayden Thomson on 6/19/17.
//  Copyright © 2017 Pluralsight. All rights reserved.
//

import UIKit

class PopoverViewController: UIViewController {
    
    
    @IBAction func showPopover(_ sender: UIButton) {
        let vc = UIViewController()
        vc.view.backgroundColor = .red
        vc.modalPresentationStyle = .popover
        vc.popoverPresentationController?.sourceView = sender
        vc.popoverPresentationController?.sourceRect = sender.bounds
        vc.popoverPresentationController?.delegate = self
        present(vc, animated: true, completion: nil)
    }

}

extension PopoverViewController: UIPopoverPresentationControllerDelegate {
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }
}
