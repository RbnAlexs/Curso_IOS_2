//
//  WebViewController.swift
//  Celdas_Personalizadas
//
//  Created by Luis Chávez on 14/08/16.
//  Copyright © 2016 UNAM Mobile. All rights reserved.
//

import UIKit

class WebViewController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var loader: UIView!
    @IBOutlet weak var activity: UIActivityIndicatorView!
    
    var url: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        webView.delegate = self
        
        let request = NSURLRequest(URL: NSURL(string: url)!)
        webView.loadRequest(request)
    }

    // WebViewDelegate
    func webViewDidStartLoad(webView: UIWebView) {
        loader.hidden =  false
        activity.startAnimating()
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        loader.hidden =  true
        activity.startAnimating()
    }
    
    
}
