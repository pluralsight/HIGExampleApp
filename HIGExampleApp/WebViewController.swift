//
//  WebViewController.swift
//  HIGExampleApp
//
//  Created by Dev Team on 6/20/17.
//  Copyright © 2017 Pluralsight. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKUIDelegate {

    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string: "https://www.pluralsight.com")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }

}
