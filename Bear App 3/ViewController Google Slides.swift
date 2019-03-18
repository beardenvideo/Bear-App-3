//
//  ViewController Google Slides.swift
//  Bear App 3
//
//  Created by Margaret Carpenter on 3/17/19.
//  Copyright © 2019 Margaret Carpenter. All rights reserved.
//

import UIKit
import WebKit


class ViewController_Google_Slides: UIViewController, WKNavigationDelegate {
    
    var webView: WKWebView!

    override func loadView() {
        
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    
    override func viewDidLoad() {
        
        let url = URL(string: "https://docs.google.com/presentation/d/e/2PACX-1vRCXNL8fAAHZ_PSRK-mQXZoBJJrKWxMzEk3IBXkdqVq9Qoxbf0KwFdw0wxXgwVi5ebwQq26mR8_xOSa/pub?start=false&loop=false&delayms=3000")!
        webView.load(URLRequest(url: url))
        
        let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
        toolbarItems = [refresh]
        
        navigationController?.isToolbarHidden = false
        
        //super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!)
    {title = webView.title}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
