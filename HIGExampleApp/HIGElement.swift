//
//  HIGElement.swift
//  HIGExampleApp
//
//  Created by Dev Team on 6/13/17.
//  Copyright © 2017 Pluralsight. All rights reserved.
//

import Foundation
import UIKit

enum HIGElement: String {
    case visualDesign
    case bars
    case views
    case controls
    
    
    var displayTitle: String {
        switch self {
        case .visualDesign:
            return NSLocalizedString("Visual Design", comment: "Visual Design title")
        case .bars:
            return NSLocalizedString("Bars", comment: "Bars title")
        case .views:
            return NSLocalizedString("Views", comment: "Views title")
        case .controls:
            return NSLocalizedString("Controls", comment: "Controls title")
        }
    }
}
