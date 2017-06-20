//
//  ScrollViewController.swift
//  HIGExampleApp
//
//  Created by Kayden Thomson on 6/19/17.
//  Copyright © 2017 Pluralsight. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {
    
    fileprivate var imageView = UIImageView()
    
    @IBOutlet weak var scrollView: UIScrollView! {
        didSet {
            scrollView.delegate = self
            scrollView.minimumZoomScale = 0.1
            scrollView.maximumZoomScale = 2
            scrollView.contentSize = imageView.frame.size
            scrollView.addSubview(imageView)
        }
    }
    
    private var image: UIImage? {
        get {
            return imageView.image
        }
        set {
            imageView.image = newValue
            imageView.sizeToFit()
            scrollView?.contentSize = imageView.frame.size
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if image == nil {
            self.image = #imageLiteral(resourceName: "ps_hero")
        }
    }
}

extension ScrollViewController : UIScrollViewDelegate
{
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
}

