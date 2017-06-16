//
//  PickersViewController.swift
//  HIGExampleApp
//
//  Created by Kayden Thomson on 6/15/17.
//  Copyright © 2017 Pluralsight. All rights reserved.
//

import UIKit

class PickersViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var pickerView: UIPickerView!
    
    let pickerData: [String] = ["Item 1",
                      "Item 2",
                      "Item 3",
                      "Item 4",
                      "Item 5",
                      "Item 6",
                      "Item 7",
                      "Item 8",
                      "Item 9"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
}
