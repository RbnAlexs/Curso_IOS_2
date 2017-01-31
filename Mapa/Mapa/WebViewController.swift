//
//  WebViewController.swift
//  Mapa
//
//  Created by Luis Chávez on 13/08/16.
//  Copyright © 2016 UNAM Mobile. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let url: String = "http://facebook.com/LuisArmandhoo"
        
        let request = NSURLRequest(URL: NSURL(string: url)!)
        webView.loadRequest(request)
    }
    
    //Allow Arbitrary Loads

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
