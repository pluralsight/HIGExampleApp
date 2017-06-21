//
//  ProgressViewController.swift
//  HIGExampleApp
//
//  Created by Dev Team on 6/19/17.
//  Copyright © 2017 Pluralsight. All rights reserved.
//

import UIKit

class ProgressViewController: UIViewController {

    @IBOutlet weak var topSpinner: UIActivityIndicatorView!
    @IBOutlet weak var middleSpinner: UIActivityIndicatorView!
    @IBOutlet weak var bottomSpinner: UIActivityIndicatorView!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBAction func topSpinnerToggle(_ sender: Any) {
        topSpinner.spinning = !topSpinner.spinning
    }
    
    @IBAction func middleSpinnerToggle(_ sender: Any) {
        middleSpinner.spinning = !middleSpinner.spinning
    }
    
    @IBAction func bottomSpinnerToggle(_ sender: Any) {
        bottomSpinner.spinning = !bottomSpinner.spinning
    }
    
    @IBAction func networkSpinnerToggle(_ sender: Any) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = !UIApplication.shared.isNetworkActivityIndicatorVisible
    }
    
    @IBAction func toggleProgressBar(_ sender: Any) {
        progressBar.setProgress(0, animated: false)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.progressBar.setProgress(1, animated: true)
        }
    }
}

extension UIActivityIndicatorView {
    
    var spinning: Bool {
        get {
            return isAnimating
        }
        set {
            if newValue {
                startAnimating()
            } else {
                stopAnimating()
            }
        }
    }
    
}
