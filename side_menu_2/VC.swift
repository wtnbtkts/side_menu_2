//
//  VC.swift
//  side_menu_2
//
//  Created by Takatoshi Watanabe on 2015/10/31.
//  Copyright © 2015年 Takatoshi Watanabe. All rights reserved.
//

import UIKit

class VC: UIViewController, SideMenuDelegate {

    var sideMenu : SideMenu?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sideMenu = SideMenu(sourceView: self.view, menuData: ["新宿", "池袋", "東京", "横浜", "渋谷", "品川", "新橋", "大宮", "秋葉原", "川崎","目黒", "恵比寿", "高田馬場"])
        sideMenu!.delegate = self
    }
    
    func sideMenuDidSelectItemAtIndex(index: Int) {
        sideMenu?.toggleMenu()
    }
    
    @IBAction func toggleSideMenu(sender: AnyObject) {
        sideMenu?.toggleMenu()
    }

}
