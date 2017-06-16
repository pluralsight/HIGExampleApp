//
//  ControlsPageViewControllerDataSourceFactory.swift
//  HIGExampleApp
//
//  Created by Kayden Thomson on 6/15/17.
//  Copyright © 2017 Pluralsight. All rights reserved.
//

import Foundation
import UIKit

class ControlsPageViewControllerDataSourceFactory {
    
    static func dataSource(for element: ControlElement) -> [UIViewController] {
        var VCList: [UIViewController] = []
        
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
    }
    
    static func VCInstance(in storyboardName: String, for viewId: String) -> UIViewController {
        return UIStoryboard(name:storyboardName, bundle: nil).instantiateViewController(withIdentifier: viewId)
    }
}
