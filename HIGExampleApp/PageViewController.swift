//
//  PageViewController.swift
//  HIGExampleApp
//
//  Created by Kayden Thomson on 6/15/17.
//  Copyright © 2017 Pluralsight. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDelegate {
    
    let pages = PageViewControllerDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        self.dataSource = pages
        if let firstVC = pages.viewControllers.first {
            setViewControllers([firstVC], direction: .forward, animated: true, completion: nil)
        }
    }
}
