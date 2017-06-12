//
//  ViewController.swift
//  WebView
//


import UIKit

class ViewController: UIViewController {

    let webUrl = "https://www.google.com"

    override func viewDidLoad() {

        if let url = URL(string: webUrl) {

            let webView = UIWebView()
            webView.frame = UIScreen.main.bounds
            webView.delegate = self
            self.view.addSubview(webView)

            let request = URLRequest(url: url)
            webView.loadRequest(request)
        }

    }

}

extension ViewController:UIWebViewDelegate{

    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool{
        // Check to start load with request or not
        return true
    }

    func webViewDidStartLoad(_ webView: UIWebView){
        //You can start progress bar here
    }

    func webViewDidFinishLoad(_ webView: UIWebView){
        //Dismiss progress bar
    }

    func webView(_ webView: UIWebView, didFailLoadWithError error: Error){
        //show error
    }
    
}

