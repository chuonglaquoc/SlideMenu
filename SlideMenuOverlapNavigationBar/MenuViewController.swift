//
//  MenuViewController.swift
//  SlideMenuOverlapNavigationBar
//
//  Created by CheapGo02 on 10/27/16.
//  Copyright © 2016 CheapGo02. All rights reserved.
//

import Foundation
import UIKit

class MenuViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Menu View"
        
    }
    
    @IBAction func btView1DidClick(_ sender: AnyObject) {
        if let controller = storyboard?.instantiateViewController(withIdentifier: "View1"){
            slideMenuController()?.changeMainViewController(controller, close: true)
            
        }
    }
    
    @IBAction func btView2DidClick(_ sender: AnyObject) {
        if let controller = storyboard?.instantiateViewController(withIdentifier: "View2"){
            slideMenuController()?.changeMainViewController(controller, close: true)
            slideMenuController()?.removeLeftGestures()
        }
    }
    
    @IBAction func btView3DidClick(_ sender: AnyObject) {
        if let controller = storyboard?.instantiateViewController(withIdentifier: "View3"){
            slideMenuController()?.changeMainViewController(controller, close: true)
        }
    }
}
