//
//  ViewController.swift
//  the_phot_app
//
//  Created by zeel darji on 17/12/24.
//

import UIKit

class ViewController: UITableViewController {
    var pictures = [String]()
//    gettin all the names of the images
    var names = ["Syd1" , "Syd2" , "Syd3" , "Syd4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        
        for item in items {
            if item.hasPrefix("IMG_"){
                pictures.append(item)}
        
        }
        
    }
    
//    another function returning number of rows we need to return
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
//        return 10
    }
    
//    what the return in the row
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? Display_photoViewController{
            vc.selectedImage = pictures[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
            
    }
   


}

  
