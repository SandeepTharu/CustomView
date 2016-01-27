//
//  ViewController.swift
//  CustomView
//
//  Created by Anit Shrestha Manadhar on 1/27/16.
//  Copyright © 2016 Technotroop. All rights reserved.
//

import UIKit

class ViewController: UIViewController,CustomViewDelegate {
    var myView:CustomView?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myView = CustomView(frame: self.view.bounds)
        self.view.addSubview(myView!)
        myView?.delegate = self
    }
    
    func buttonPress() {
        print("Button action triggered in view")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

