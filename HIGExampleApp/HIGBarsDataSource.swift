//
//  HIGBarsDataSource.swift
//  HIGExampleApp
//
//  Created by Kayden Thomson on 6/14/17.
//  Copyright © 2017 Pluralsight. All rights reserved.
//

import Foundation
import UIKit

class HIGBarsDataSource: HIGElementDataSource {
    
    let itemList: [HIGBar] = [
        .navigationBars,
        .searchBars,
        .tabBars,
        .toolbars
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
        case .navigationBars:
            storyboardName = "NavigationBars"
        case .searchBars:
            storyboardName = "SearchBars"
        case .tabBars:
            storyboardName = "TabBars"
        case .toolbars:
            storyboardName = "Toolbars"
        }
        
        let sb = UIStoryboard(name: storyboardName, bundle: nil)
        return sb.instantiateInitialViewController()!
    }
}

enum HIGBar {
    case navigationBars
    case searchBars
    case tabBars
    case toolbars
    
    var displayTitle: String {
        switch self {
        case .navigationBars:
            return "Navigation Bars"
        case .searchBars:
            return "Search Bars"
        case .tabBars:
            return "Tab Bars"
        case .toolbars:
            return "Toolbars"
        }
    }
}
