//
//  HIGControlsDataSource.swift
//  HIGExampleApp
//
//  Created by Dev Team on 6/13/17.
//  Copyright © 2017 Pluralsight. All rights reserved.
//

import Foundation
import UIKit

class HIGControlsDataSource: HIGElementDataSource {
    
    let itemList: [HIGControl] = [
        .buttons,
        .editMenus,
        .pageControls,
        .pickers,
        .progress,
        .refreshContentControl,
        .segmentedControls,
        .sliders,
        .switches,
        .textFields
    ]
    
    var numberOfItems: Int {
        return itemList.count
    }
    
    func title(at index: Int) -> String {
        return itemList[index].displayTitle
    }
    
    func viewController(for index: Int) -> UIViewController {
        let vc: UIViewController
        switch itemList[index] {
        case .buttons:
            let sb = UIStoryboard(name: "Buttons", bundle: nil)
            vc = sb.instantiateInitialViewController()!
        default:
            vc = UIViewController()
            vc.view.backgroundColor = .red
        }
        
        return vc
    }
}

enum HIGControl {
    case buttons
    case editMenus
    case pageControls
    case pickers
    case progress
    case refreshContentControl
    case segmentedControls
    case sliders
    case switches
    case textFields
    
    var displayTitle: String {
        switch self {
        case .buttons:
            return "Buttons"
        case .editMenus:
            return "Edit Menues"
        case .pageControls:
            return "Page Controls"
        case .pickers:
            return "Pickers (UIPickerView)"
        case .progress:
            return "Progress Indicators"
        case .refreshContentControl:
            return "Refresh Content Control"
        case .segmentedControls:
            return "Segmented Controls"
        case .sliders:
            return "Sliders"
        case .switches:
            return "Switches"
        case .textFields:
            return "Text Fields"
        }
    }
}
