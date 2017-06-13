//
//  HIGControlsDataSource.swift
//  HIGExampleApp
//
//  Created by Dev Team on 6/13/17.
//  Copyright © 2017 Pluralsight. All rights reserved.
//

import Foundation

class HIGControlsDataSource: HIGElementDataSource {
    
    let itemList = [
        "Buttons",
        "Edit Menus",
        "Page Controls",
        "Pickers (UIPickerView)",
        "Progress Indicators",
        "Refresh Content Control",
        "Segmented Controls",
        "Sliders",
        "Switches",
        "Text Fields"
    ]
    
    var numberOfItems: Int {
        return itemList.count
    }
    
    func title(at index: Int) -> String {
        return itemList[index]
    }
}
