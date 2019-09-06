//
//  DetailViewController.swift
//  HWS StormViewer
//
//  Created by Alex Castrillo on 8/29/19.
//  Copyright © 2019 Alejo Games. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    var selectedImage: String?
    var totalNumberOfImages = 0
    var position = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let imageToLoad = selectedImage {
            imageView.image  = UIImage(named: imageToLoad)
        }
<<<<<<< HEAD:HWS Social Media/DetailViewController.swift
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
=======
>>>>>>> ab03fa626346a87e36ada89b1278a4f0ad0968bf:HWS StormViewer/DetailViewController.swift
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
<<<<<<< HEAD:HWS Social Media/DetailViewController.swift
    
    @objc func shareTapped() {
        guard let image = imageView.image?.jpegData(compressionQuality: 0.8) else {
            print("No image found!")
            return
        }
        // Challenge: Try adding the image name to the list of items that are shared
        let uiActivityVC = UIActivityViewController(activityItems: [image, "\(image)"], applicationActivities: [])
        uiActivityVC.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(uiActivityVC, animated: true)
    }
=======
>>>>>>> ab03fa626346a87e36ada89b1278a4f0ad0968bf:HWS StormViewer/DetailViewController.swift
}
