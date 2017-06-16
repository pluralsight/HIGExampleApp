//
//  ControlElement.swift
//  HIGExampleApp
//
//  Created by Kayden Thomson on 6/15/17.
//  Copyright © 2017 Pluralsight. All rights reserved.
//

import Foundation
import UIKit

enum ControlElement: String {
    case buttons
    case editMenus
    case pageControls
    case pickers
    case progress
    case refreshContent
    case segmentedControls
    case sliders
    case steppers
    case switches
    case textFields
    
    var storyboardFileName: String {
        switch self {
        case .buttons:
            return NSLocalizedString("Buttons", comment: "Buttons filename")
        case .editMenus:
            return NSLocalizedString("EditMenus", comment: "Edit Menus filename")
        case .pageControls:
            return NSLocalizedString("PageControls", comment: "Page Controls filename")
        case .pickers:
            return NSLocalizedString("Pickers", comment: "Pickers filename")
        case .progress:
            return NSLocalizedString("Progress", comment: "Progress filename")
        case .refreshContent:
            return NSLocalizedString("RefreshContentControl", comment: "Refresh Content Control filename")
        case .segmentedControls:
            return NSLocalizedString("SegmentedControls", comment: "Segmented Controls filename")
        case .sliders:
            return NSLocalizedString("Sliders", comment: "Sliders filename")
        case .steppers:
            return NSLocalizedString("Steppers", comment: "Steppers filename")
        case .switches:
            return NSLocalizedString("Switches", comment: "Switches filename")
        case .textFields:
            return NSLocalizedString("TextFields", comment: "Text Fields filename")
        }
    }
    
    var displayTitle: String {
        switch self {
        case .buttons:
            return NSLocalizedString("Buttons", comment: "Buttons title")
        case .editMenus:
            return NSLocalizedString("Edit Menus", comment: "Edit Menus title")
        case .pageControls:
            return NSLocalizedString("Page Controls", comment: "Page Controls title")
        case .pickers:
            return NSLocalizedString("Pickers", comment: "Pickers title")
        case .progress:
            return NSLocalizedString("Progress", comment: "Progress title")
        case .refreshContent:
            return NSLocalizedString("Refresh Content Control", comment: "Refresh Content Control title")
        case .segmentedControls:
            return NSLocalizedString("Segmented Controls", comment: "Segmented Controls title")
        case .sliders:
            return NSLocalizedString("Sliders", comment: "Sliders title")
        case .steppers:
            return NSLocalizedString("Steppers", comment: "Steppers title")
        case .switches:
            return NSLocalizedString("Switches", comment: "Switches title")
        case .textFields:
            return NSLocalizedString("Text Fields", comment: "Text Fields title")
        }
    }
}
