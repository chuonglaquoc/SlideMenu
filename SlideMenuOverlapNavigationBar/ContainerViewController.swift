//
//  ContainerViewController.swift
//  SlideMenuOverlapNavigationBar
//
//  Created by CheapGo02 on 10/27/16.
//  Copyright © 2016 CheapGo02. All rights reserved.
//

import Foundation
import UIKit
import SlideMenuControllerSwift

class ContainerViewController: SlideMenuController {
    override func awakeFromNib() {
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "Main") {
            self.mainViewController = controller
        }
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "Menu") {
            self.leftViewController = controller
        }
        SlideMenuOptions.contentViewOpacity = 0.0
        super.awakeFromNib()
    }
}
