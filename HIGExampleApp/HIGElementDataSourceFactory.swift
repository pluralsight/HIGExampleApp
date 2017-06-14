//
//  HIGElementDataSourceFactory.swift
//  HIGExampleApp
//
//  Created by Dev Team on 6/13/17.
//  Copyright © 2017 Pluralsight. All rights reserved.
//

import Foundation

struct HIGElementDataSourceFactory {
    
    static func dataSource(for element: HIGElement) -> HIGElementDataSource {
        switch element {
        case .visualDesign:
            return HIGVisualDesignDataSource()
        case .bars:
            return HIGBarsDataSource()
        case .views:
            return HIGViewsDataSource()
        case .controls:
            return HIGControlsDataSource()
        }
    }
}
