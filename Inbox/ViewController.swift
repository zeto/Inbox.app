//
//  ViewController.swift
//  Inbox
//
//  Created by Jose Goncalves on 02/06/2015.
//  Copyright (c) 2015 Jose Goncalves. All rights reserved.
//

import Cocoa
import WebKit

class ViewController: NSViewController {

    @IBOutlet var webview: WebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webview.customUserAgent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.75.14 (KHTML, like Gecko) Version/8.0.3 Safari/7046A194A"
        var url = NSURL(string: "https://inbox.google.com")
        var request = NSURLRequest(URL: url!)
        webview.mainFrame.loadRequest(request)
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

}

