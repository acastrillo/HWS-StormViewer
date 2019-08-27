//
//  ViewController.swift
//  HWS StormViewer
//
//  Created by Alex Castrillo on 8/23/19.
//  Copyright © 2019 Alejo Games. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl"){
                
                pictures.append(item)
                
            }
        }
        print(pictures)
    }
}

