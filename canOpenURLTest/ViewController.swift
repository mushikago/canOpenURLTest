//
//  ViewController.swift
//  canOpenURLTest
//
//  Created by Tetsuya Shiraishi on 2015/10/27.
//  Copyright © 2015年 Tetsuya Shiraishi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for scheme in (0 ..< 100) {
            print(self.schemeAvailable("\(scheme)://"))
//            self.schemeAvailable("fb://")
        }
    }

    func schemeAvailable(_ scheme: String) -> Bool {
        if let url = URL.init(string: scheme) {
            return UIApplication.shared.canOpenURL(url)
        }
        return false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

