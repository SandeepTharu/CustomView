//
//  CustomView.swift
//  CustomView
//
//  Created by Anit Shrestha Manadhar on 1/27/16.
//  Copyright © 2016 Technotroop. All rights reserved.
//

import UIKit

protocol CustomViewDelegate {
    func buttonPress()
}

class CustomView: UIView {
    
    var delegate:CustomViewDelegate?
    
    @IBOutlet var view: CustomView!
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
    // Drawing code
    }
    */
    override init(frame: CGRect) {
        super.init(frame: frame)
        NSBundle.mainBundle().loadNibNamed("CustomView", owner: self, options: nil)
        self.addSubview(self.view)
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        NSBundle.mainBundle().loadNibNamed("CustomView", owner: self, options: nil)
        self.addSubview(self.view)

    }
    
    
    
    @IBAction func buttonPress(sender: AnyObject) {
        print("button Press")
        self.delegate?.buttonPress()
    }
}
