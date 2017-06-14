//
//  HIGViewsDataSource.swift
//  HIGExampleApp
//
//  Created by Kayden Thomson on 6/13/17.
//  Copyright © 2017 Pluralsight. All rights reserved.
//

import Foundation
import UIKit

class HIGViewsDataSource: HIGElementDataSource {
    
    let itemList: [HIGView] = [
        .actionSheets,
        .activityViews,
        .alerts,
        .collections,
        .imageViews,
        .maps,
        .pages,
        .popovers,
        .scrollViews,
        .tables,
        .textViews,
        .webViews
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
        case .actionSheets:
            storyboardName = "ActionSheets"
        case .activityViews:
            storyboardName = "ActivityViews"
        case .alerts:
            storyboardName = "Alerts"
        case .collections:
            storyboardName = "Collections"
        case .imageViews:
            storyboardName = "ImageViews"
        case .maps:
            storyboardName = "Maps"
        case .pages:
            storyboardName = "Pages"
        case .popovers:
            storyboardName = "Popovers"
        case .scrollViews:
            storyboardName = "ScrollViews"
        case .tables:
            storyboardName = "Tables"
        case .textViews:
            storyboardName = "TextViews"
        case .webViews:
            storyboardName = "WebViews"
        }
        
        let sb = UIStoryboard(name: storyboardName, bundle: nil)
        return sb.instantiateInitialViewController()!
    }
}

enum HIGView {
    case actionSheets
    case activityViews
    case alerts
    case collections
    case imageViews
    case maps
    case pages
    case popovers
    case scrollViews
    case tables
    case textViews
    case webViews
    
    var displayTitle: String {
        switch self {
        case .actionSheets:
            return "Action Sheets"
        case .activityViews:
            return "Activity Views"
        case .alerts:
            return "Alerts"
        case .collections:
            return "Collections"
        case .imageViews:
            return "Image Views"
        case .maps:
            return "Maps"
        case .pages:
            return "Pages"
        case .popovers:
            return "Popovers"
        case .scrollViews:
            return "Scroll Views"
        case .tables:
            return "Tables"
        case .textViews:
            return "Text Views"
        case .webViews:
            return "Web Views"
        }
    }
}
