//
//  ViewController.swift
//  webrequest-test
//
//  Created by jim Veneskey on 7/5/16.
//  Copyright © 2016 Jim Veneskey. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var container: UIView!
 
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = WKWebView()
        container.addSubview(webView)
        
    }

    override func viewDidAppear(animated: Bool) {
        print("The width of the screen is \(container.bounds.width) believe it or don't!'")
        // make the frame of the web view match its' container
        let frame = CGRectMake(0, 0, container.bounds.width, container.bounds.height)
        webView.frame = frame
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadRequest(urlStr: String) {
        
        let url = NSURL(string: urlStr)!
        let request = NSURLRequest(URL: url)
        
        webView.loadRequest(request)
    }

    @IBAction func loadSwift(sender: AnyObject) {
        print("Loading Swift Blog")
        loadRequest("https://developer.apple.com/swift/blog/")
    }

    
    @IBAction func loadSteak(sender: AnyObject) {
        print("Loading Google News")
        loadRequest("https://news.google.com")
    
    }
    
    
    @IBAction func loadRumors(sender: AnyObject) {
        print("Loading Mac Rumors")
        loadRequest("https://www.macrumors.com/")
    }
    
    
}

