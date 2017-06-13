//
//  HIGElementDataSource.swift
//  HIGExampleApp
//
//  Created by Dev Team on 6/13/17.
//  Copyright © 2017 Pluralsight. All rights reserved.
//

import Foundation

protocol HIGElementDataSource {
    
    var numberOfItems: Int { get }
    func title(at index: Int) -> String
    
}
