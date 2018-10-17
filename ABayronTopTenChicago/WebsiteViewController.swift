//
//  WebsiteViewController.swift
//  ABayronTopTenChicago
//
//  Created by Audi Bayron on 3/10/17.
//  Copyright © 2017 NIU Computer Science. All rights reserved.
//

import UIKit

class WebsiteViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    var webData1:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Loads the website based on the cell
        let myURL = NSURL(string: webData1!)
        let urlRequest = NSURLRequest(URL: myURL!)
        webView.loadRequest(urlRequest)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
