//
//  ViewController.swift
//  AppStoreClone
//
//  Created by Ensar Ozturk on 24.09.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let networkManager =  NetworkManager()
        networkManager.fetchApps()
    }


}

