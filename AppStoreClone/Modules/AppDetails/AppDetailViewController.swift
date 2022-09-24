//
//  AppDetailViewController.swift
//  AppStoreClone
//
//  Created by Ensar Ozturk on 24.09.2022.
//

import UIKit
import WebKit

class AppDetailViewController: UIViewController, UIGestureRecognizerDelegate {
    @IBOutlet weak var webView: WKWebView!
    
    var url: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        webView.load(URLRequest.init(url: URL.init(string: url)!))
        
        navigationController?.setNavigationBarHidden(true, animated: true)
        navigationController?.interactivePopGestureRecognizer?.delegate = self
        navigationController?.interactivePopGestureRecognizer?.isEnabled = true
    }

}
