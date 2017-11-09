//
//  ChatVC.swift
//  smackApp
//
//  Created by Maurice on 8/11/17.
//  Copyright © 2017 Maurice. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {
    
    //outlet
    @IBOutlet weak var menuButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuButton.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
    }
}
