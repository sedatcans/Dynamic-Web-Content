//
//  ViewController.swift
//  Download Web Content
//
//  Created by Sedatcan Sonat on 31.03.2016.
//  Copyright © 2016 Sedatcan Sonat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = NSURL(string:"http://www.stackoverflow.com")!
        
        webView.loadRequest(NSURLRequest(URL : url))
        
       /* let task = NSURLSession.sharedSession().dataTaskWithURL(url) { (data, response, error) -> Void in
            // when task completed it will execute
            if let urlContent = data
            {
                
                let webContent = NSString(data: urlContent, encoding: NSUTF8StringEncoding)
                
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    
                    self.webView.loadHTMLString(String(webContent!), baseURL : nil)

                    })
                
                
            }   else
            {
                
            }

        }
        task.resume()*/
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

