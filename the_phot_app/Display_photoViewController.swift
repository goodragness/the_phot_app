//
//  Display_photoViewController.swift
//  the_phot_app
//
//  Created by zeel darji on 17/12/24.
//

import UIKit

class Display_photoViewController: UIViewController {
//    getting the image view for the page
    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let imageToLoad = selectedImage{
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
//    making an overide function
    
    
    

}
