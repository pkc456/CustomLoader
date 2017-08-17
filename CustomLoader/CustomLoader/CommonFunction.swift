//
//  CommonFunction.swift
//  CustomLoader
//
//  Created by pradeep.chaudhary on 8/17/17.
//  Copyright © 2017 pradeep.chaudhary. All rights reserved.
//

import UIKit

class CommonFunction: NSObject {

    var hud : MBProgressHUD!
    
    class var sharedInstance: CommonFunction {
        struct Static {
            static let instance: CommonFunction = CommonFunction()
        }
        return Static.instance
    }
    

    func showLoading(color: UIColor?){
        self.stopLoading()
        
        let arrayOfContent = Bundle.main.loadNibNamed("CustomLoader", owner: nil, options: nil)
        let view = arrayOfContent?.last
        
        let delegate : AppDelegate = UIApplication.shared.delegate as! AppDelegate
        hud = MBProgressHUD.showAdded(to: delegate.window!, animated: true)
        
        if let providedColor = color{
            hud.bezelView.color = providedColor
        }
        
        hud.mode = .customView
        hud.label.text = nil
        hud.detailsLabel.text = nil
        hud.customView = view as? UIView
        hud.show(animated: true)
        
        var gameTimer: Timer!
        gameTimer = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(stopLoading), userInfo: nil, repeats: false)

    }
    
    func stopLoading(){
        
        if let hudInstance = hud{
            if(hudInstance.isHidden == false){
                hudInstance.hide(animated: true)
            }
        }
        
        
    }
    
}
