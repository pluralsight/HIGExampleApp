//
//  PageViewControllerDataSource.swift
//  HIGExampleApp
//
//  Created by Kayden Thomson on 6/15/17.
//  Copyright © 2017 Pluralsight. All rights reserved.
//

import Foundation
import UIKit

class PageViewControllerDataSource: NSObject, UIPageViewControllerDataSource {
    
    var controlElement: ControlElement?
    
    lazy var viewControllers: [UIViewController] = {
        var VCList: [UIViewController] = []
        
        guard let element = self.controlElement else { return VCList }
        
        switch element {
        case .pickers:
            VCList = [self.VCInstance(in: element.storyboardFileName, for: "PickerView"),
                      self.VCInstance(in: element.storyboardFileName, for: "DatePickerView")]
        case .pageControls:
            VCList = [self.VCInstance(in: element.storyboardFileName, for: "FirstView"),
                      self.VCInstance(in: element.storyboardFileName, for: "SecondView"),
                      self.VCInstance(in: element.storyboardFileName, for: "ThirdView")]
        default:
            VCList = []
        }
        
        return VCList
    }()

    func VCInstance(in storyboardName: String, for viewId: String) -> UIViewController {
        return UIStoryboard(name:storyboardName, bundle: nil).instantiateViewController(withIdentifier: viewId)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = viewControllers.index(of: viewController) else {
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        
        guard nextIndex < viewControllers.count else {
            return viewControllers.first
        }
        
        return viewControllers[nextIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = viewControllers.index(of: viewController) else {
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0 else {
            return viewControllers.last
        }
        
        guard viewControllers.count > previousIndex else {
            return nil
        }
        
        return viewControllers[previousIndex]
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return viewControllers.count
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        guard let firstViewController = viewControllers.first,
            let firstViewControllerIndex = viewControllers.index(of: firstViewController) else {
                return 0
        }
        
        return firstViewControllerIndex
    }
}
