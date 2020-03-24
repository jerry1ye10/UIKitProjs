//
//  DetailViewController.swift
//  project3.5
//
//  Created by Jerry Ye on 3/24/20.
//  Copyright © 2020 Jerry Ye. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var image: String? 

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: image!)
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareFlag))

        // Do any additional setup after loading the view.
    }
    
    @objc func shareFlag(){
        guard let image = imageView.image?.jpegData(compressionQuality: 0.8)else{
            print("No image")
            return
        }
        let vc = UIActivityViewController(activityItems: [image], applicationActivities: [])
        present(vc, animated: true)
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
