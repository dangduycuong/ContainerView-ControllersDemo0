//
//  ViewController.swift
//  ContainerViewControllersDemo0
//
//  Created by duycuong on 2/18/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit

class MasterContainerViewController: UIViewController {

    @IBOutlet weak var coverButton: UIButton!
    @IBOutlet weak var leadingContrain: NSLayoutConstraint!
    
    @IBOutlet weak var menuSlide: UIView!
    var menuShowing = true {
        didSet {
            UIView.animate(withDuration: 0.35) {
                self.leadingContrain.constant = self.menuShowing ? 0 : -self.menuSlide.bounds.width
                self.coverButton.alpha = self.menuShowing ? 1 : 0
                self.view.layoutIfNeeded()
            }
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(KeepNotification), name: .key, object: nil)
        
       
    }
    @objc func KeepNotification() {
        menuShowing = !menuShowing
    }
    override func viewWillAppear(_ animated: Bool) {
        menuShowing = false
    }
    

    @IBAction func clickButton(_ sender: Any) {
        menuShowing = !menuShowing
    }
    
}

