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
    case controls
    
    var displayTitle: String {
        switch self {
        case .controls:
            return NSLocalizedString("Controls", comment: "Controls title")
        }
    }
}
