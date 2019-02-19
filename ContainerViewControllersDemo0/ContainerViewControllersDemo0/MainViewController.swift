//
//  MainViewController.swift
//  ContainerViewControllersDemo0
//
//  Created by duycuong on 2/18/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit
extension Notification.Name {
    static let key = Notification.Name("Key")
}

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    

    @IBAction func openMenu(_ sender: Any) {
        NotificationCenter.default.post(name: .key, object: nil)
        navigationController?.popViewController(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
