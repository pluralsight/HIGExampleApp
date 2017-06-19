//
//  CollectionViewController.swift
//  HIGExampleApp
//
//  Created by Dev Team on 6/19/17.
//  Copyright © 2017 Pluralsight. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController {
    
    @IBOutlet weak var cell: UICollectionViewCell!
    
    let reuseIdentifier = "cell"
    var items = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48"]


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
    
        cell.backgroundColor = UIColor(red:0.91, green:0.30, blue:0.24, alpha:1.0)
        if indexPath.item % 2 != 0 {
            cell.backgroundColor = UIColor(red:0.20, green:0.29, blue:0.37, alpha:1.0)
        }
        
        cell.label.textColor = UIColor.white
        cell.label.text = self.items[indexPath.item]
    
        return cell
    }
}

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var label: UILabel!
}
