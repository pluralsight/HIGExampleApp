//
//  ActivityViewController.swift
//  HIGExampleApp
//
//  Created by Dev Team on 6/19/17.
//  Copyright © 2017 Pluralsight. All rights reserved.
//

import UIKit

class ActivityViewController: UIViewController {

    
    @IBAction func toggleActivityView(_ sender: Any) {
        let url = URL(string: "http://www.google.com")!
        let provider = URLProvider(url: url)
        let activityVC = UIActivityViewController(activityItems: [provider], applicationActivities: nil)
        present(activityVC, animated: true, completion: nil)
    }

}

class URLProvider: UIActivityItemProvider {
    
    var url: URL!
    
    init(url: URL) {
        self.url = url
        super.init(placeholderItem: url)
    }
    
    override var item: Any {
        return url
    }
    
}
