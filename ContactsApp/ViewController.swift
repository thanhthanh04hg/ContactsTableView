//
//  ViewController.swift
//  ContactsApp
//
//  Created by Macbook on 4/5/20.
//  Copyright © 2020 Macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func ChangeContactView(_ sender: Any) {
//        StoryBoard
        let sb=UIStoryboard.init(name: "Main", bundle: nil)
//        Create screen2
        let screen2=sb.instantiateViewController(withIdentifier: "ViewControllerScreen2") as! ViewControllerScreen2
//        Navigation push
        self.navigationController?.pushViewController(screen2, animated: false)
        
    }

   
    
}
