//
//  ViewController.swift
//  SideMenuShow
//
//  Created by USER on 5/25/18.
//  Copyright © 2018 mCubes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sideMenuAction: UIBarButtonItem!
    
    @IBOutlet weak var leadingConstant: NSLayoutConstraint!
    
    @IBOutlet weak var sideShow: UIView!
    
    var sidebar = false
    
    @IBAction func sideAction(_ sender: UIBarButtonItem) {
        
        if(sidebar){
            leadingConstant.constant = 0
         
        }
        else{
            
         leadingConstant.constant = -150
            UIView.animate(withDuration: 0.3) {
                self.sideShow.layoutIfNeeded()
            }
        }
       sidebar = !sidebar
        
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
      
    }


}

