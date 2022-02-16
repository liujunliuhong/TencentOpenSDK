//
//  ViewController.swift
//  TencentOpenSDK
//
//  Created by galaxy on 2022/2/13.
//

import UIKit
import TencentOpenAPI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let _ = TencentOAuth(appId: "", andDelegate: nil)
    }
}

