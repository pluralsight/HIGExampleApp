//
//  PageViewController.swift
//  HIGExampleApp
//
//  Created by Kayden Thomson on 6/15/17.
//  Copyright © 2017 Pluralsight. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDelegate {

//    lazy var VCList: [UIViewController] = {
//        return [self.VCInstance(name: "PickerView"),
//                self.VCInstance(name: "DatePickerView")]
//    }()
//    
//    private func VCInstance(name: String) -> UIViewController {
//        return UIStoryboard(name: "Pickers", bundle: nil).instantiateViewController(withIdentifier: name)
//    }
    var controlElement: ControlElement? {
        didSet {
            if let element = controlElement {
                elementDataSource = ControlsPageViewControllerDataSourceFactory.dataSource(for: element)
            } else {
                elementDataSource = []
            }
            
            title = controlElement?.displayTitle
            
        }
    }
    
    fileprivate var elementDataSource: [UIViewController]? {
        didSet {
            loadViewIfNeeded()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        if let firstVC = elementDataSource?.first {
            setViewControllers([firstVC], direction: .forward, animated: true, completion: nil)
        }
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = elementDataSource?.index(of: viewController) else {
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0 else {
            return elementDataSource?.last
        }
        
        guard (elementDataSource?.count ?? 0) > previousIndex else {
            return nil
        }
        
        return elementDataSource?[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = elementDataSource?.index(of: viewController) else {
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        
        guard nextIndex < (elementDataSource?.count ?? 0) else {
            return elementDataSource?.first
        }
        
        guard (elementDataSource?.count ?? 0) > nextIndex else {
            return nil
        }
        
        return elementDataSource?[nextIndex]
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return (elementDataSource?.count ?? 0)
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        guard let firstViewController = viewControllers?.first,
            let firstViewControllerIndex = elementDataSource?.index(of: firstViewController) else {
                return 0
        }
        
        return firstViewControllerIndex
    }
}
