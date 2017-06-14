//
//  HIGVisualDesignDataSource.swift
//  HIGExampleApp
//
//  Created by Kayden Thomson on 6/14/17.
//  Copyright © 2017 Pluralsight. All rights reserved.
//

import Foundation
import UIKit

class HIGVisualDesignDataSource: HIGElementDataSource {
    
    let itemList: [HIGVisualDesign] = [
        .typography
    ]
    
    var numberOfItems: Int {
        return itemList.count
    }
    
    func title(at index: Int) -> String {
        return itemList[index].displayTitle
    }
    
    func viewController(for index: Int) -> UIViewController {
        let storyboardName: String
        
        switch itemList[index] {
        case .typography:
            storyboardName = "Typography"
        }
        
        let sb = UIStoryboard(name: storyboardName, bundle: nil)
        return sb.instantiateInitialViewController()!
    }
}

enum HIGVisualDesign {
    case typography
    
    var displayTitle: String {
        switch self {
        case .typography:
            return "Typography"
        }
    }
}
