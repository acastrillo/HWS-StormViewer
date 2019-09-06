//
//  ViewController.swift
//  HWS Social Media
//
//  Created by Alex Castrillo on 8/23/19.
//  Copyright © 2019 Alejo Games. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

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
        title = "Storm Viewer"
        print(pictures)
        
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Challenge 2: Have the items sorted. added .sort to pictures
        pictures.sort()
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        // Challenge 3: have the title show "Picture X of Y”, where Y is the total number of images and X is the selected picture’s position in the array.
        cell.textLabel?.text = "Picture \(indexPath.item) of \(pictures.count)"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController{
            vc.selectedImage = pictures[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

