//
//  CustomLoader.swift
//  CustomLoader
//
//  Created by pradeep.chaudhary on 8/17/17.
//  Copyright © 2017 pradeep.chaudhary. All rights reserved.
//

import UIKit

class CustomLoader: UIView {

    @IBOutlet weak var animatedImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        animatedImageView.animationImages = [
//            UIImage(named:"7")!,
            UIImage(named:"1")!,
            UIImage(named:"2")!,
            UIImage(named:"3")!,
            UIImage(named:"4")!,
            UIImage(named:"5")!,
            UIImage(named:"6")!,
            UIImage(named:"7")!,
            UIImage(named:"8")!,
            UIImage(named:"9")!,
            UIImage(named:"10")!,
            UIImage(named:"11")!,
            UIImage(named:"12")!,
            UIImage(named:"13")!,
            UIImage(named:"14")!,
            UIImage(named:"15")!,
            UIImage(named:"16")!,
            UIImage(named:"17")!,
            UIImage(named:"18")!,
        ]
        
        animatedImageView.animationDuration = 1.0
        animatedImageView.startAnimating()
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
