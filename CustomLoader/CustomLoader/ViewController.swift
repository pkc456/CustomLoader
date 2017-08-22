//
//  ViewController.swift
//  CustomLoader
//
//  Created by pradeep.chaudhary on 8/17/17.
//  Copyright © 2017 pradeep.chaudhary. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showLoaderAction(_ sender: UIButton) {
        
        CommonFunction.sharedInstance.showLoading(color: UIColor.clear)
    }

    
    @IBAction func hideLoaderAction(_ sender: UIButton) {
        CommonFunction.sharedInstance.stopLoading()
    }
    
}

