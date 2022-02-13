//
//  ViewController.swift
//  TencentOpenSDK
//
//  Created by galaxy on 2022/2/13.
//

import UIKit
//import TencentOpenApi
//import TencentOpenAPI
import TencentOpenAPI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TencentOAuth.handleOpen(URL(string: "")!)
    }


}

