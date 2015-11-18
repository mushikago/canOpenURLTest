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
        
        for (var scheme = 0; scheme < 100; scheme++){
            self.schemeAvailable("\(scheme)://")
//            self.schemeAvailable("fb://")
        }
    }

    func schemeAvailable(scheme: String) -> Bool {
        if let url = NSURL.init(string: scheme) {
            return UIApplication.sharedApplication().canOpenURL(url)
        }
        return false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

